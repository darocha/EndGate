/// <reference path="IRenderer.d.ts" />
/// <reference path="IRenderable.d.ts" />

module EndGate.Core.Rendering {

    export class Renderer2d implements IRenderer {
        // These essentially are used to create a double buffer for rendering
        private _visibleCanvas: HTMLCanvasElement;
        private _visibleContext: CanvasRenderingContext2D;
        private _bufferCanvas: HTMLCanvasElement;
        private _bufferContext: CanvasRenderingContext2D;

        private _disposed: bool;

        constructor(renderOnto: HTMLCanvasElement) {
            this._visibleCanvas = renderOnto;
            this._visibleContext = renderOnto.getContext("2d");

            // Create an equally sized canvas for a buffer
            this._bufferCanvas = <HTMLCanvasElement>document.createElement("canvas");
            this._bufferContext = this._bufferCanvas.getContext("2d");
            this.UpdateBufferSize();

            this._disposed = false;
        }

        public Render(renderables: IRenderable[]): void {
            // Check if our visible canvas has changed size
            if (this._bufferCanvas.width !== this._visibleCanvas.width || this._bufferCanvas.height !== this._visibleCanvas.height) {
                this.UpdateBufferSize();
            }

            // We do not save or restore the canvas state because we want to let the
            // dev decide how they manipulate the canvas

            // Clear our buffer to prepare it for new drawings
            this._bufferContext.clearRect(0, 0, this._bufferCanvas.width, this._bufferCanvas.height);

            for (var i = 0; i < renderables.length; i++) {
                renderables[i].Draw(this._bufferContext);
            }

            this._visibleContext.clearRect(0, 0, this._visibleCanvas.width, this._visibleCanvas.height);
            this._visibleContext.drawImage(this._bufferCanvas, 0, 0);
        }

        public Dispose(): void {
            if (!this._disposed) {
                this._disposed = true;

                this._visibleCanvas.parentNode.removeChild(this._visibleCanvas);
            }
        }

        private UpdateBufferSize()
        {
            this._bufferCanvas.width = this._visibleCanvas.width;
            this._bufferCanvas.height = this._visibleCanvas.height;
        }
    }

}