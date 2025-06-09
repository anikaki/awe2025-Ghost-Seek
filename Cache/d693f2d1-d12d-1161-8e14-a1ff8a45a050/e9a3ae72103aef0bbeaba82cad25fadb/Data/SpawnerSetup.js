/**
// Name: setupSpawner.js
// Version: 0.0.1
// Description: Provides a way to define new spawners. To be used with Spawner.js
*/

//@input SceneObject[] objects
//@input bool groupObjects = false

//@ui {"widget":"separator"}

//@input string type = "None" {"label" : "Surface Type", "widget":"combobox", "values":[{"label":"None (Lidar And Non-Lidar)", "value":"None"},  {"label":"Wall (Lidar Only)", "value":"Wall"}, {"label":"Floor (Lidar Only)", "value":"Floor"}, {"label":"Ceiling (Lidar Only)", "value":"Ceiling"}, {"label":"Table (Lidar Only)", "value":"Table"}, {"label":"Seat (Lidar Only)", "value":"Seat"}, {"label":"Window (Lidar Only)", "value":"Window"}, {"label":"Door (Lidar Only)", "value":"Door"}, {"label":"All (Adds a spawner for each Surface Type)", "value":"All"} ]}
//@input string directionType = "any" {"widget":"combobox", "values":[{"label":"Any", "value":"any"}, {"label":"Up Facing Surfaces", "value":"up"}, {"label":"Vertical Surfaces", "value":"vertical"}, {"label":"Down Facing Surfaces", "value":"down"} ]}
// @input bool ignorePosition = true
// @input float spacingRadius = 1.0 {"label" : "Spacing"}

// @input float minScale = 0.5 {"widget":"slider", "min":0.01, "max":100.0, "step":0.01}
// @input float maxScale = 0.8 {"widget":"slider", "min":0.01, "max":100.0, "step":0.01}
// @input int maxInstances = 256 {"min":1, "max":10000, "step":1}

//@input string orientation {"widget":"combobox", "values":[{"label":"Random", "value":"random"}, {"label":"Up", "value":"up"}, {"label":"Down", "value":"down"}, {"label":"Left", "value":"left"}, {"label":"Right", "value":"right"} ]}
//@ui {"widget":"separator"}

// @input bool advanced = false
// @input Component.Script spawner {"showIf" : "advanced"}
// @input int spacingGroup = 0 {"showIf" : "advanced", "min":0, "max":9, "step":1}
// @input bool printDebug = false {"showIf" : "advanced"}


script.instancedSpawners = {};
script.transformGetters = {};
//global.SpawnerSetup = {
//    setupSpawner: function (config) {
//        // Example of what setup might look like
//        //print("Spawner setup called with type: " + config.type);
//        
//        // Do something with config.type, config.maxInstances, etc.
//        // This is your custom spawner logic.
//    }
//};
print("[setupSpawner.js] script loaded, function defined.");


function setupSpawner(script) {
    
       script.objects.enabled = true; 

        
       print("[setupSpawner] setupSpawner called with script type: " + script.type);


       print("Available surface types: " + JSON.stringify(global.WorldMeshController.surfaceType));


if (!script.spawner) {
    printDebug("InstanceSpawner Script is not set", true);
    return;
}

if (!script.objects || script.objects.length < 1) {
    printDebug("No objects to spawn", true);
    return;
}

if (!(global.WorldMeshController && global.WorldMeshController.surfaceType)) {
    printDebug("Please add WorldMeshController", true);
    return;
}

var listOfAvailableTypes = [];
for (var k in global.WorldMeshController.surfaceType) {
    listOfAvailableTypes.push(k);
}

var defaultGetter = {
    getTransform: function(pos, normal) {
        var projection;
        do {
            if (script.orientation != "random" && (script.orientation == "up" || script.orientation == "down" || script.orientation == "left" || script.orientation == "right")) {
                projection = vec3[script.orientation]();
            } else {
                projection = getRandomVec3().projectOnPlane(normal);
            }
        } while (projection.length === 0);
        return {
            position: pos,
            rotation: quat.lookAt(projection, normal)
        };
    }
};

var maxInstances = script.maxInstances;

if (script.objects) {
    var instObjsControllers = [];
    var scales = [];

    var curScale = clamp((script.maxScale - script.minScale) * Math.random() + script.minScale, script.minScale, script.maxScale);   
    if (!curScale) {
        curScale = 1.0;
    }

    script.objects.forEach(function(object, idx) {
        if (object) {                
                
            scales.push(curScale);

            if (!global.InstancedObjectController) {
                printDebug("InstancedObjectController doesn't exist", true);
                return;
            }

            var controller = new global.InstancedObjectController(object, maxInstances, script.ignorePosition);
            instObjsControllers.push(controller);

            if (!script.groupObjects) {
                pushSpawner([controller], [curScale], script.spacingGroup, [script.spacingGroup], [script.spacingRadius]);
            }
        } else {
            printDebug("Error: Object " + idx + " is not set", true);
        }
    });

    if (script.groupObjects) {
        pushSpawner(instObjsControllers, scales, script.spacingGroup, [script.spacingGroup], [script.spacingRadius]);
    }

}

function pushSpawner(instObjsControllers, scales, spacingGroup, spacingGroupsToCheck, spacingRadiuses) {
    var spawner = new global.Spawner(instObjsControllers, scales, spacingGroup, spacingGroupsToCheck, spacingRadiuses);
    spawner.setDirectionType(script.directionType);
    
    if (script.type === "All") {
        // Add to every type
        for (var i=0; i< listOfAvailableTypes.length; i++) {
            addToSpawnersArray(listOfAvailableTypes[i], spawner); 
        } 
    } else {
        // Add to individual type
        addToSpawnersArray(script.type, spawner);
    }
}

function addToSpawnersArray(type, spawner) {
        
    var typeIdx = global.WorldMeshController.surfaceType[type];
    print("✅ Attempting to push spawner to surface type: " + type + " (" + typeIdx + ")");
    if (script.spawner.instancedSpawners[typeIdx]) {
        script.spawner.instancedSpawners[typeIdx].push(spawner);
    }
    
    if (script.spawner.transformGetters[typeIdx]) {
        script.spawner.transformGetters[typeIdx].push(defaultGetter);
    }
}

function getRandomVec3() {
    return new vec3(Math.random(), Math.random(), Math.random());
}

function clamp(num, a, b) {
    return Math.max(Math.min(num, Math.max(a, b)), Math.min(a, b));
}

function printDebug(msg, force) {
    if (script.printDebug || force) {
        print("[" + script.getSceneObject().name + "] " + msg + "");
    }
}
    
//    
//    //MAKE spawnerset up.js global 
//global.SpawnerSetup = {
//    setupSpawner: setupSpawner
//};    
}
global.setupSpawner = function() {
    setupSpawner(script);
        print("Object count: " + script.objects.length);

    script.objects.forEach(function(obj, i) {
    if (obj) {
        print("🔗 Object[" + i + "] is " + obj.name);
    } else {
        print("⚠️ Object[" + i + "] is null or undefined");
    }
});
};


 