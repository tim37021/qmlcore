Object {
    property Object target;
    onCompleted: {
        if(this.target != null) {
            for(let [ename, callbacks] of Object.entries(this._eventHandlers)) {
                for(let callback of callbacks)
                    this.target.on(ename, callback);
            }
        }else {
            console.log('Warning! no target')
        }
    }
}