declare namespace global {
  function setupSpawner(): void;
  function startSpawningGhost(): void;
    
}
import {Interactable} from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import {ToggleButton} from "SpectaclesInteractionKit.lspkg/Components/UI/ToggleButton/ToggleButton"

@component
export class NewScript extends BaseScriptComponent {
    @input
    startGameToggleButton!: ToggleButton;
    
    @input
    ghostObject: SceneObject;
    
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
            this
                .ghostObject
                .getComponent(Interactable.getTypeName())
                .onTriggerEnd
                .add(() => {
                    print('ghost pinched - game ended');
                });
            
        });
    }
}
