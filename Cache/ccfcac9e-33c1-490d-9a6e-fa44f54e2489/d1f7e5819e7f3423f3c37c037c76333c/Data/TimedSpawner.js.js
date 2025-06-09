//@input SceneObject prefab
//@input float spawnInterval = 3.0
//@input vec3 minSpawnRange = {-50, 0, -50}
//@input vec3 maxSpawnRange = {50, 20, 50}
//@input bool printDebug = true

print("[TimedSpawner] Script loaded and running");

var currentInstance = null;
var timer = 0;

function getRandomPosition() {
    var pos = new vec3(
        script.minSpawnRange.x + Math.random() * (script.maxSpawnRange.x - script.minSpawnRange.x),
        script.minSpawnRange.y + Math.random() * (script.maxSpawnRange.y - script.minSpawnRange.y),
        script.minSpawnRange.z + Math.random() * (script.maxSpawnRange.z - script.minSpawnRange.z)
    );
    if (script.printDebug) {
        print("[TimedSpawner] Random position: " + pos.toString());
    }
    return pos;
}

function spawnAtRandomLocation() {
    if (!script.prefab) {
        print("❌ [TimedSpawner] No prefab assigned!");
        return;
    }

    var obj = script.prefab.copyWholeHierarchy(script.getSceneObject());
    obj.getTransform().setLocalPosition(getRandomPosition());

    if (script.printDebug) {
        print("✨ [TimedSpawner] Spawned object: " + obj.name);
    }

    if (currentInstance) {
        currentInstance.enabled = false;
        currentInstance.destroy();
    }

    currentInstance = obj;
}

var updateEvent = script.createEvent("UpdateEvent");
updateEvent.bind(function () {
    timer += getDeltaTime();
    if (timer >= script.spawnInterval) {
        timer = 0;
        spawnAtRandomLocation();
    }
});
