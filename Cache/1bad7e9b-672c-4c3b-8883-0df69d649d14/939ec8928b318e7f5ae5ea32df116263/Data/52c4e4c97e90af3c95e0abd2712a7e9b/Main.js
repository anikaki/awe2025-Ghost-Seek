"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.NewScript = void 0;
var __selfType = requireType("./Main");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const Interactable_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable");
let NewScript = class NewScript extends BaseScriptComponent {
    onAwake() {
        this.startGameToggleButton.onStateChanged.add((isToggledOn) => {
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
                .getComponent(Interactable_1.Interactable.getTypeName())
                .onTriggerEnd
                .add(() => {
                print('ghost pinched - game ended');
                global.isGameOver = true;
                this.gameOverMessage.enabled = true;
            });
        });
    }
    __initialize() {
        super.__initialize();
        this.ignoreButtonPress = true;
    }
};
exports.NewScript = NewScript;
exports.NewScript = NewScript = __decorate([
    component
], NewScript);
//# sourceMappingURL=Main.js.map