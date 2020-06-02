package data;

class LevelData implements data.IData {
	public var project(default,null) : ProjectData;
	public var layers : Array<LayerContent> = [];

	public var pxWid : Int = 256;
	public var pxHei : Int = 256;


	@:allow(data.ProjectData)
	private function new(p:data.ProjectData) {
		project = p;

		for(def in project.layerDefs)
			layers.push( new LayerContent(this, def) );
	}

	public function toString() {
		return Type.getClassName(Type.getClass(this));
	}

	public function clone() {
		var e = new LevelData(project);
		return e;
	}

	public function toJson() {
		return {
		}
	}
}