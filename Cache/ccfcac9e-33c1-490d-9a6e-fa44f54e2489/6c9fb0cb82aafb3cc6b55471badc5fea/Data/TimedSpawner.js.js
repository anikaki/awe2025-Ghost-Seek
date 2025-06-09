// Name: TimedSpawner.js
// Description: Spawns a single object at a random location every 3 seconds

//@input SceneObject prefab
//@input float spawnInterval = 3.0 {"label":"Spawn Interval (sec)", "min":0.1, "max":10.0}
//@input vec3 minSpawnRange = {-50, 0, -50}
//@input vec3 maxSpawnRange = {50, 20, 50}
//@input bool printDebug = false

var currentInstance = null;
var timer = 0;

function getRandomPosition() {
    return new vec3(
        getRandomInRange(script.minSpawnRange.x, script.maxSpawnRange.x),
        getRandomInRange(script.minSpawnRange.y, script.maxSpawnRange.y),
        getRandomInRange(script.minSpawnRange.z, script.maxSpawnRange.z)
    );
}

function getRandomInRange(min, max) {
    return min + Math.random() * (max - min);
}

function spawnAtRandomLocation() {
    if (!script.prefab) {
        print("❌ No prefab assigned.");
        return;
    }

    var newInstance = script.prefab.copyWholeHierarchy(script.getSceneObject());
    var transform = newInstance.getTransform();
    transform.setLocalPosition(getRandomPosition());

    if (script.printDebug) {
        print("✨ Spawned at: " + transform.getLocalPosition().toString());
    }

    if (currentInstance) {
        currentInstance.enabled = false;
        currentInstance.destroy();
    }

    currentInstance = newInstance;
}

// Update loop to trigger spawns
var updateEvent = script.createEvent("UpdateEvent");
updateEvent.bind(function () {
    timer += getDeltaTime();
    if (timer >= script.spawnInterval) {
        timer = 0;
        spawnAtRandomLocation();
    }
});
