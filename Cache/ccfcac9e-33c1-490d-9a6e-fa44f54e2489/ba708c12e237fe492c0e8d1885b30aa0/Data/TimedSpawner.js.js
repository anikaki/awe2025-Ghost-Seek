// Name: TimedSpawner.js
// Description: Spawns a single object at a random location every 3 seconds with debug logging

//@input SceneObject prefab
//@input float spawnInterval = 3.0 {"label":"Spawn Interval (sec)", "min":0.1, "max":10.0}
//@input vec3 minSpawnRange = {-50, 0, -50}
//@input vec3 maxSpawnRange = {50, 20, 50}
//@input bool printDebug = false

var currentInstance = null;
var timer = 0;
print("[TimedSpawner] Script loaded")
function getRandomPosition() {
    var pos = new vec3(
        getRandomInRange(script.minSpawnRange.x, script.maxSpawnRange.x),
        getRandomInRange(script.minSpawnRange.y, script.maxSpawnRange.y),
        getRandomInRange(script.minSpawnRange.z, script.maxSpawnRange.z)
    );
    if (script.printDebug) {
        print("[TimedSpawner] Generated random position: " + pos.toString());
    }
    return pos;
}

function getRandomInRange(min, max) {
    return min + Math.random() * (max - min);
}

function spawnAtRandomLocation() {
    if (!script.prefab) {
        print("❌ [TimedSpawner] No prefab assigned.");
        return;
    }

    var newInstance = script.prefab.copyWholeHierarchy(script.getSceneObject());

    var transform = newInstance.getTransform();
    var newPosition = getRandomPosition();
    transform.setLocalPosition(newPosition);

    if (script.printDebug) {
        print("✨ [TimedSpawner] Spawned new instance at " + newPosition.toString());
        print("📦 [TimedSpawner] Instance name: " + newInstance.name);
    }

    if (currentInstance) {
        if (script.printDebug) {
            print("🗑️ [TimedSpawner] Destroying previous instance: " + currentInstance.name);
        }
        currentInstance.enabled = false;
        currentInstance.destroy();
    }

    currentInstance = newInstance;
}

// Update loop to trigger spawns
/*var updateEvent = script.createEvent("UpdateEvent");
updateEvent.bind(function () {
    timer += getDeltaTime();
    if (timer >= script.spawnInterval) {
        timer = 0;
        spawnAtRandomLocation();
    }
});*/

global.startSpawningGhost = function () {
    print('I got called...');
    spawnAtRandomLocation();
};
