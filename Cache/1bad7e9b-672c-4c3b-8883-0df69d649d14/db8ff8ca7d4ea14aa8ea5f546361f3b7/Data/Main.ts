declare namespace global {
  function setupSpawner(): void;
  function startSpawningGhost(): void;
}

import {ToggleButton} from "SpectaclesInteractionKit.lspkg/Components/UI/ToggleButton/ToggleButton"

@component
export class NewScript extends BaseScriptComponent {
    @input
    startGameToggleButton!: ToggleButton;
    
    @input
    startObject!: SceneObject;
    
    private ignoreButtonPress = true; 
    
    onAwake() {
        this.startGameToggleButton.onStateChanged.add((isToggledOn: boolean) => {
            if (this.ignoreButtonPress) {
                this.ignoreButtonPress = false;
                return;
            }            
                
            //this.startObject.enabled = false;
            // this.startGameToggleButton.getSceneObject().getChild(0).enabled = false;
            this.startGameToggleButton.getSceneObject().enabled = false;
            print('game started');
            global.setupSpawner();
            global.startSpawningGhost();
        });
    }
}
