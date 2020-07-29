local Classes = {
	_Instance = {
	    "Archivable";
	    "Name";
	    "Parent";
	};
	
	Accoutrement = {
	    Inherits = "_Instance";
	    "AttachmentForward";
	    "AttachmentPoint";
	    "AttachmentPos";
	    "AttachmentRight";
	    "AttachmentUp";
	};
	
	Accessory = {
	    Inherits = "Accoutrement";
	};
	
	AdvancedDragger = {
	    Inherits = "_Instance";
	};
	
	Animation = {
	    Inherits = "_Instance";
	    "AnimationId";
	};
	
	AnimationTrack = {
	    Inherits = "_Instance";
	    "Looped";
	    "Priority";
	    "TimePosition";
	};
	
	Attachment = {
	    Inherits = "_Instance";
	    "Axis";
	    "CFrame";
	    "Orientation";
	    "Position";
	    "Rotation";
	    "SecondaryAxis";
	    "Visible";
	};
	
	BasePlayerGui = {
	    Inherits = "_Instance";
	};
	
	Beam = {
	    Inherits = "_Instance";
	    "Attachment0";
	    "Attachment1";
	    "Color";
	    "CurveSize0";
	    "CurveSize1";
	    "Enabled";
	    "FaceCamera";
	    "LightEmission";
	    "LightInfluence";
	    "Segments";
	    "Texture";
	    "TextureLength";
	    "TextureMode";
	    "TextureSpeed";
	    "Transparency";
	    "Width0";
	    "Width1";
	    "ZOffset";
	};
	
	BodyMover = {
	    Inherits = "_Instance";
	};
	
	BodyAngularVelocity = {
	    Inherits = "BodyMover";
	    "AngularVelocity";
	    "MaxTorque";
	    "P";
	};
	
	BodyForce = {
	    Inherits = "BodyMover";
	    "Force";
	};
	
	BodyGyro = {
	    Inherits = "BodyMover";
	    "CFrame";
	    "D";
	    "MaxTorque";
	    "P";
	};
	
	BodyPosition = {
	    Inherits = "BodyMover";
	    "D";
	    "MaxForce";
	    "P";
	    "Position";
	};
	
	BodyThrust = {
	    Inherits = "BodyMover";
	    "Force";
	    "Location";
	};
	
	BodyVelocity = {
	    Inherits = "BodyMover";
	    "MaxForce";
	    "P";
	    "Velocity";
	};
	
	RocketPropulsion = {
	    Inherits = "BodyMover";
	    "CartoonFactor";
	    "MaxSpeed";
	    "MaxThrust";
	    "MaxTorque";
	    "Target";
	    "TargetOffset";
	    "TargetRadius";
	    "ThrustD";
	    "ThrustP";
	    "TurnD";
	    "TurnP";
	};
	
	Button = {
	    Inherits = "_Instance";
	    "ClickableWhenViewportHidden";
	    "Enabled";
	    "Icon";
	};
	
	CacheableContentProvider = {
	    Inherits = "_Instance";
	};
	
	MeshContentProvider = {
	    Inherits = "CacheableContentProvider";
	};
	
	SolidModelContentProvider = {
	    Inherits = "CacheableContentProvider";
	};
	
	Camera = {
	    Inherits = "_Instance";
	    "CFrame";
	    "CameraSubject";
	    "CameraType";
	    "FieldOfView";
	    "Focus";
	    "HeadLocked";
	    "HeadScale";
	};
	
	CharacterAppearance = {
	    Inherits = "_Instance";
	};
	
	BodyColors = {
	    Inherits = "CharacterAppearance";
	    "HeadColor";
	    "HeadColor3";
	    "LeftArmColor";
	    "LeftArmColor3";
	    "LeftLegColor";
	    "LeftLegColor3";
	    "RightArmColor";
	    "RightArmColor3";
	    "RightLegColor";
	    "RightLegColor3";
	    "TorsoColor";
	    "TorsoColor3";
	};
	
	CharacterMesh = {
	    Inherits = "CharacterAppearance";
	    "BaseTextureId";
	    "BodyPart";
	    "OverlayTextureId";
	};
	
	Clothing = {
	    Inherits = "CharacterAppearance";
	};
	
	Pants = {
	    Inherits = "Clothing";
	    "PantsTemplate";
	};
	
	Shirt = {
	    Inherits = "Clothing";
	    "ShirtTemplate";
	};
	
	ShirtGraphic = {
	    Inherits = "CharacterAppearance";
	    "Graphic";
	};
	
	ClickDetector = {
	    Inherits = "_Instance";
	    "CursorIcon";
	    "MaxActivationDistance";
	};
	
	Configuration = {
	    Inherits = "_Instance";
	};
	
	Constraint = {
	    Inherits = "_Instance";
	    "Attachment0";
	    "Attachment1";
	    "Color";
	    "Enabled";
	    "Visible";
	};
	
	AlignOrientation = {
	    Inherits = "Constraint";
	    "MaxAngularVelocity";
	    "MaxTorque";
	    "PrimaryAxisOnly";
	    "ReactionTorqueEnabled";
	    "Responsiveness";
	    "RigidityEnabled";
	};
	
	AlignPosition = {
	    Inherits = "Constraint";
	    "ApplyAtCenterOfMass";
	    "MaxForce";
	    "MaxVelocity";
	    "ReactionForceEnabled";
	    "Responsiveness";
	    "RigidityEnabled";
	};
	
	BallSocketConstraint = {
	    Inherits = "Constraint";
	    "LimitsEnabled";
	    "Radius";
	    "Restitution";
	    "TwistLimitsEnabled";
	    "TwistLowerAngle";
	    "TwistUpperAngle";
	    "UpperAngle";
	};
	
	HingeConstraint = {
	    Inherits = "Constraint";
	    "ActuatorType";
	    "AngularSpeed";
	    "AngularVelocity";
	    "LimitsEnabled";
	    "LowerAngle";
	    "MotorMaxAcceleration";
	    "MotorMaxTorque";
	    "Radius";
	    "Restitution";
	    "ServoMaxTorque";
	    "TargetAngle";
	    "UpperAngle";
	};
	
	LineForce = {
	    Inherits = "Constraint";
	    "ApplyAtCenterOfMass";
	    "InverseSquareLaw";
	    "Magnitude";
	    "MaxForce";
	    "ReactionForceEnabled";
	};
	
	RodConstraint = {
	    Inherits = "Constraint";
	    "Length";
	    "Thickness";
	};
	
	RopeConstraint = {
	    Inherits = "Constraint";
	    "Length";
	    "Restitution";
	    "Thickness";
	};
	
	SlidingBallConstraint = {
	    Inherits = "Constraint";
	    "ActuatorType";
	    "LimitsEnabled";
	    "LowerLimit";
	    "MotorMaxAcceleration";
	    "MotorMaxForce";
	    "Restitution";
	    "ServoMaxForce";
	    "Size";
	    "Speed";
	    "TargetPosition";
	    "UpperLimit";
	    "Velocity";
	};
	
	CylindricalConstraint = {
	    Inherits = "SlidingBallConstraint";
	    "AngularActuatorType";
	    "AngularLimitsEnabled";
	    "AngularRestitution";
	    "AngularSpeed";
	    "AngularVelocity";
	    "InclinationAngle";
	    "LowerAngle";
	    "MotorMaxAngularAcceleration";
	    "MotorMaxTorque";
	    "RotationAxisVisible";
	    "ServoMaxTorque";
	    "TargetAngle";
	    "UpperAngle";
	};
	
	PrismaticConstraint = {
	    Inherits = "SlidingBallConstraint";
	};
	
	SpringConstraint = {
	    Inherits = "Constraint";
	    "Coils";
	    "Damping";
	    "FreeLength";
	    "LimitsEnabled";
	    "MaxForce";
	    "MaxLength";
	    "MinLength";
	    "Radius";
	    "Stiffness";
	    "Thickness";
	};
	
	Torque = {
	    Inherits = "Constraint";
	    "RelativeTo";
	    "Torque";
	};
	
	VectorForce = {
	    Inherits = "Constraint";
	    "ApplyAtCenterOfMass";
	    "Force";
	    "RelativeTo";
	};
	
	ContentProvider = {
	    Inherits = "_Instance";
	};
	
	HumanoidController = {
	    Inherits = "Controller";
	};
	
	SkateboardController = {
	    Inherits = "Controller";
	};
	
	VehicleController = {
	    Inherits = "Controller";
	};
	
	DataModelMesh = {
	    Inherits = "_Instance";
	    "Offset";
	    "Scale";
	    "VertexColor";
	};
	
	BevelMesh = {
	    Inherits = "DataModelMesh";
	};
	
	BlockMesh = {
	    Inherits = "BevelMesh";
	};
	
	FileMesh = {
	    Inherits = "DataModelMesh";
	};
	
	SpecialMesh = {
	    Inherits = "FileMesh";
	    "MeshType";
	};
	
	Debris = {
	    Inherits = "_Instance";
	};
	
	Dialog = {
	    Inherits = "_Instance";
	    "BehaviorType";
	    "ConversationDistance";
	    "GoodbyeChoiceActive";
	    "GoodbyeDialog";
	    "InUse";
	    "InitialPrompt";
	    "Purpose";
	    "Tone";
	    "TriggerDistance";
	    "TriggerOffset";
	};
	
	DialogChoice = {
	    Inherits = "_Instance";
	    "GoodbyeChoiceActive";
	    "GoodbyeDialog";
	    "ResponseDialog";
	    "UserDialog";
	};
	
	Explosion = {
	    Inherits = "_Instance";
	    "BlastPressure";
	    "BlastRadius";
	    "DestroyJointRadiusPercent";
	    "ExplosionType";
	    "Position";
	    "Visible";
	};
	
	FaceInstance = {
	    Inherits = "_Instance";
	    "Face";
	};
	
	Decal = {
	    Inherits = "FaceInstance";
	    "Color3";
	    "Texture";
	    "Transparency";
	};
	
	Texture = {
	    Inherits = "Decal";
	    "StudsPerTileU";
	    "StudsPerTileV";
	};
	
	Feature = {
	    Inherits = "_Instance";
	    "FaceId";
	    "InOut";
	    "LeftRight";
	    "TopBottom";
	};
	
	Fire = {
	    Inherits = "_Instance";
	    "Color";
	    "Enabled";
	    "Heat";
	    "SecondaryColor";
	    "Size";
	};
	
	Folder = {
	    Inherits = "_Instance";
	};
	
	ForceField = {
	    Inherits = "_Instance";
	    "Visible";
	};
	
	GameSettings = {
	    Inherits = "_Instance";
	    "AdditionalCoreIncludeDirs";
	    "BubbleChatLifetime";
	    "BubbleChatMaxBubbles";
	    "ChatHistory";
	    "ChatScrollLength";
	    "HardwareMouse";
	    "OverrideStarterScript";
	    "ReportAbuseChatHistory";
	    "SoftwareSound";
	    "VideoCaptureEnabled";
	    "VideoQuality";
	};
	
	GamepadService = {
	    Inherits = "_Instance";
	};
	
	Geometry = {
	    Inherits = "_Instance";
	};
	
	GuiBase = {
	    Inherits = "_Instance";
	};
	
	GuiBase2d = {
	    Inherits = "GuiBase";
	    "AutoLocalize";
	    "RootLocalizationTable";
	};
	
	GuiObject = {
	    Inherits = "GuiBase2d";
	    "Active";
	    "AnchorPoint";
	    "BackgroundColor3";
	    "BackgroundTransparency";
	    "BorderColor3";
	    "BorderSizePixel";
	    "ClipsDescendants";
	    "LayoutOrder";
	    "NextSelectionDown";
	    "NextSelectionLeft";
	    "NextSelectionRight";
	    "NextSelectionUp";
	    "Position";
	    "Rotation";
	    "Selectable";
	    "SelectionImageObject";
	    "Size";
	    "SizeConstraint";
	    "Visible";
	    "ZIndex";
	};
	
	Frame = {
	    Inherits = "GuiObject";
	    "Style";
	};
	
	GuiButton = {
	    Inherits = "GuiObject";
	    "AutoButtonColor";
	    "Modal";
	    "Selected";
	    "Style";
	};
	
	ImageButton = {
	    Inherits = "GuiButton";
	    "HoverImage";
	    "Image";
	    "ImageColor3";
	    "ImageRectOffset";
	    "ImageRectSize";
	    "ImageTransparency";
	    "PressedImage";
	    "ScaleType";
	    "SliceCenter";
	    "SliceScale";
	    "TileSize";
	};
	
	TextButton = {
	    Inherits = "GuiButton";
	    "Font";
	    "LineHeight";
	    "Text";
	    "TextColor3";
	    "TextScaled";
	    "TextSize";
	    "TextStrokeColor3";
	    "TextStrokeTransparency";
	    "TextTransparency";
	    "TextTruncate";
	    "TextWrapped";
	    "TextXAlignment";
	    "TextYAlignment";
	};
	
	GuiLabel = {
	    Inherits = "GuiObject";
	};
	
	ImageLabel = {
	    Inherits = "GuiLabel";
	    "Image";
	    "ImageColor3";
	    "ImageRectOffset";
	    "ImageRectSize";
	    "ImageTransparency";
	    "ScaleType";
	    "SliceCenter";
	    "SliceScale";
	    "TileSize";
	};
	
	TextLabel = {
	    Inherits = "GuiLabel";
	    "Font";
	    "LineHeight";
	    "Text";
	    "TextColor3";
	    "TextScaled";
	    "TextSize";
	    "TextStrokeColor3";
	    "TextStrokeTransparency";
	    "TextTransparency";
	    "TextTruncate";
	    "TextWrapped";
	    "TextXAlignment";
	    "TextYAlignment";
	};
	
	ScrollingFrame = {
	    Inherits = "GuiObject";
	    "BottomImage";
	    "CanvasPosition";
	    "CanvasSize";
	    "ElasticBehavior";
	    "HorizontalScrollBarInset";
	    "MidImage";
	    "ScrollBarImageColor3";
	    "ScrollBarImageTransparency";
	    "ScrollBarThickness";
	    "ScrollingDirection";
	    "ScrollingEnabled";
	    "TopImage";
	    "VerticalScrollBarInset";
	    "VerticalScrollBarPosition";
	};
	
	TextBox = {
	    Inherits = "GuiObject";
	    "ClearTextOnFocus";
	    "Font";
	    "LineHeight";
	    "ManualFocusRelease";
	    "MultiLine";
	    "OverlayNativeInput";
	    "PlaceholderColor3";
	    "PlaceholderText";
	    "ShowNativeInput";
	    "Text";
	    "TextColor3";
	    "TextScaled";
	    "TextSize";
	    "TextStrokeColor3";
	    "TextStrokeTransparency";
	    "TextTransparency";
	    "TextTruncate";
	    "TextWrapped";
	    "TextXAlignment";
	    "TextYAlignment";
	};
	
	LayerCollector = {
	    Inherits = "GuiBase2d";
	    "Enabled";
	    "ResetOnSpawn";
	    "ZIndexBehavior";
	};
	
	BillboardGui = {
	    Inherits = "LayerCollector";
	    "Active";
	    "Adornee";
	    "AlwaysOnTop";
	    "ClipsDescendants";
	    "ExtentsOffset";
	    "ExtentsOffsetWorldSpace";
	    "LightInfluence";
	    "MaxDistance";
	    "PlayerToHideFrom";
	    "Size";
	    "SizeOffset";
	    "StudsOffset";
	    "StudsOffsetWorldSpace";
	};
	
	ScreenGui = {
	    Inherits = "LayerCollector";
	    "DisplayOrder";
	    "IgnoreGuiInset";
	};
	
	SurfaceGui = {
	    Inherits = "LayerCollector";
	    "Active";
	    "Adornee";
	    "AlwaysOnTop";
	    "CanvasSize";
	    "ClipsDescendants";
	    "Face";
	    "LightInfluence";
	    "ToolPunchThroughDistance";
	    "ZOffset";
	};
	
	GuiBase3d = {
	    Inherits = "GuiBase";
	    "Color3";
	    "Transparency";
	    "Visible";
	};
	
	PVAdornment = {
	    Inherits = "GuiBase3d";
	    "Adornee";
	};
	
	HandleAdornment = {
	    Inherits = "PVAdornment";
	    "AlwaysOnTop";
	    "CFrame";
	    "SizeRelativeOffset";
	    "ZIndex";
	};
	
	BoxHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Size";
	};
	
	ConeHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Height";
	    "Radius";
	};
	
	CylinderHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Height";
	    "Radius";
	};
	
	ImageHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Image";
	    "Size";
	};
	
	LineHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Length";
	    "Thickness";
	};
	
	SphereHandleAdornment = {
	    Inherits = "HandleAdornment";
	    "Radius";
	};
	
	ParabolaAdornment = {
	    Inherits = "PVAdornment";
	    "A";
	    "B";
	    "C";
	    "Range";
	    "Thickness";
	};
	
	SelectionBox = {
	    Inherits = "PVAdornment";
	    "LineThickness";
	    "SurfaceColor3";
	    "SurfaceTransparency";
	};
	
	SelectionSphere = {
	    Inherits = "PVAdornment";
	    "SurfaceColor3";
	    "SurfaceTransparency";
	};
	
	PartAdornment = {
	    Inherits = "GuiBase3d";
	    "Adornee";
	};
	
	HandlesBase = {
	    Inherits = "PartAdornment";
	};
	
	ArcHandles = {
	    Inherits = "HandlesBase";
	    "Axes";
	};
	
	Handles = {
	    Inherits = "HandlesBase";
	    "Faces";
	    "Style";
	};
	
	SurfaceSelection = {
	    Inherits = "PartAdornment";
	    "TargetSurface";
	};
	
	SelectionLasso = {
	    Inherits = "GuiBase3d";
	    "Humanoid";
	};
	
	GuiItem = {
	    Inherits = "_Instance";
	};
	
	Backpack = {
	    Inherits = "GuiItem";
	};
	
	BackpackItem = {
	    Inherits = "GuiItem";
	    "TextureId";
	};
	
	Tool = {
	    Inherits = "BackpackItem";
	    "CanBeDropped";
	    "Enabled";
	    "Grip";
	    "GripForward";
	    "GripPos";
	    "GripRight";
	    "GripUp";
	    "ManualActivationOnly";
	    "RequiresHandle";
	    "ToolTip";
	};
	
	ButtonBindingWidget = {
	    Inherits = "GuiItem";
	};
	
	StarterPack = {
	    Inherits = "GuiItem";
	};
	
	GuidRegistryService = {
	    Inherits = "_Instance";
	};
	
	Humanoid = {
	    Inherits = "_Instance";
	    "AutoJumpEnabled";
	    "AutoRotate";
	    "AutomaticScalingEnabled";
	    "CameraOffset";
	    "DisplayDistanceType";
	    "Health";
	    "HealthDisplayDistance";
	    "HealthDisplayType";
	    "HipHeight";
	    "Jump";
	    "JumpPower";
	    "MaxHealth";
	    "MaxSlopeAngle";
	    "NameDisplayDistance";
	    "NameOcclusion";
	    "PlatformStand";
	    "RigType";
	    "Sit";
	    "TargetPoint";
	    "WalkSpeed";
	    "WalkToPart";
	    "WalkToPoint";
	};
	
	JointInstance = {
	    Inherits = "_Instance";
	    "C0";
	    "C1";
	    "Part0";
	    "Part1";
	};
	
	DynamicRotate = {
	    Inherits = "JointInstance";
	    "BaseAngle";
	};
	
	RotateP = {
	    Inherits = "DynamicRotate";
	};
	
	RotateV = {
	    Inherits = "DynamicRotate";
	};
	
	Glue = {
	    Inherits = "JointInstance";
	    "F0";
	    "F1";
	    "F2";
	    "F3";
	};
	
	ManualSurfaceJointInstance = {
	    Inherits = "JointInstance";
	};
	
	ManualGlue = {
	    Inherits = "ManualSurfaceJointInstance";
	};
	
	ManualWeld = {
	    Inherits = "ManualSurfaceJointInstance";
	};
	
	Motor = {
	    Inherits = "JointInstance";
	    "CurrentAngle";
	    "DesiredAngle";
	    "MaxVelocity";
	};
	
	Motor6D = {
	    Inherits = "Motor";
	};
	
	Rotate = {
	    Inherits = "JointInstance";
	};
	
	Snap = {
	    Inherits = "JointInstance";
	};
	
	VelocityMotor = {
	    Inherits = "JointInstance";
	    "CurrentAngle";
	    "DesiredAngle";
	    "Hole";
	    "MaxVelocity";
	};
	
	Weld = {
	    Inherits = "JointInstance";
	};
	
	KeyboardService = {
	    Inherits = "_Instance";
	};
	
	Keyframe = {
	    Inherits = "_Instance";
	    "Time";
	};
	
	KeyframeSequence = {
	    Inherits = "_Instance";
	    "Loop";
	    "Priority";
	};
	
	Light = {
	    Inherits = "_Instance";
	    "Brightness";
	    "Color";
	    "Enabled";
	    "Shadows";
	};
	
	PointLight = {
	    Inherits = "Light";
	    "Range";
	};
	
	SpotLight = {
	    Inherits = "Light";
	    "Angle";
	    "Face";
	    "Range";
	};
	
	SurfaceLight = {
	    Inherits = "Light";
	    "Angle";
	    "Face";
	    "Range";
	};
	
	LuaSourceContainer = {
	    Inherits = "_Instance";
	};
	
	BaseScript = {
	    Inherits = "LuaSourceContainer";
	    "Disabled";
	};
	
	Script = {
	    Inherits = "BaseScript";
	};
	
	LocalScript = {
	    Inherits = "Script";
	};
	
	ModuleScript = {
	    Inherits = "LuaSourceContainer";
	};
	
	Mouse = {
	    Inherits = "_Instance";
	    "Icon";
	    "TargetFilter";
	};
	
	PVInstance = {
	    Inherits = "_Instance";
	};
	
	BasePart = {
	    Inherits = "PVInstance";
	    "Anchored";
	    "BackParamA";
	    "BackParamB";
	    "BackSurface";
	    "BackSurfaceInput";
	    "BottomParamA";
	    "BottomParamB";
	    "BottomSurface";
	    "BottomSurfaceInput";
	    "BrickColor";
	    --"CFrame";
	    "CanCollide";
	    --"CollisionGroupId";
	    "Color";
	    --"CustomPhysicalProperties";
	    "FrontParamA";
	    "FrontParamB";
	    "FrontSurface";
	    "FrontSurfaceInput";
	    "LeftParamA";
	    "LeftParamB";
	    "LeftSurface";
	    "LeftSurfaceInput";
	    "Locked";
	    "Material";
	    --"Orientation";
	    "Position";
	    "Reflectance";
	    "RightParamA";
	    "RightParamB";
	    "RightSurface";
	    "RightSurfaceInput";
	    "RotVelocity";
	    "Rotation";
	    --"Size";
	    "TopParamA";
	    "TopParamB";
	    "TopSurface";
	    "TopSurfaceInput";
	    "Transparency";
	    "Velocity";
	};
	
	CornerWedgePart = {
	    Inherits = "BasePart";
	};
	
	FormFactorPart = {
	    Inherits = "BasePart";
	};
	
	Part = {
	    Inherits = "FormFactorPart";
	    "Shape";
	};
	
	Platform = {
	    Inherits = "Part";
	};
	
	Seat = {
	    Inherits = "Part";
	    "Disabled";
	};
	
	SpawnLocation = {
	    Inherits = "Part";
	    "AllowTeamChangeOnTouch";
	    "Duration";
	    "Enabled";
	    "Neutral";
	    "TeamColor";
	};
	
	WedgePart = {
	    Inherits = "FormFactorPart";
	};
	
	MeshPart = {
	    Inherits = "BasePart";
	};
	
	PartOperation = {
	    Inherits = "BasePart";
	    "UsePartColor";
	};
	
	NegateOperation = {
	    Inherits = "PartOperation";
	};
	
	UnionOperation = {
	    Inherits = "PartOperation";
	};
	
	TrussPart = {
	    Inherits = "BasePart";
	    "Style";
	};
	
	VehicleSeat = {
	    Inherits = "BasePart";
	    "Disabled";
	    "HeadsUpDisplay";
	    "MaxSpeed";
	    "Steer";
	    "SteerFloat";
	    "Throttle";
	    "ThrottleFloat";
	    "Torque";
	    "TurnSpeed";
	};
	
	Model = {
	    Inherits = "PVInstance";
	    "PrimaryPart";
	};
	
	Pages = {
	    Inherits = "_Instance";
	};
	
	DataStorePages = {
	    Inherits = "Pages";
	};
	
	FriendPages = {
	    Inherits = "Pages";
	};
	
	InventoryPages = {
	    Inherits = "Pages";
	};
	
	StandardPages = {
	    Inherits = "Pages";
	};
	
	PartOperationAsset = {
	    Inherits = "_Instance";
	};
	
	ParticleEmitter = {
	    Inherits = "_Instance";
	    "Acceleration";
	    "Color";
	    "Drag";
	    "EmissionDirection";
	    "Enabled";
	    "Lifetime";
	    "LightEmission";
	    "LightInfluence";
	    "LockedToPart";
	    "Rate";
	    "RotSpeed";
	    "Rotation";
	    "Size";
	    "Speed";
	    "SpreadAngle";
	    "Texture";
	    "Transparency";
	    "VelocityInheritance";
	    "ZOffset";
	};
	
	Path = {
	    Inherits = "_Instance";
	};
	
	Pose = {
	    Inherits = "_Instance";
	    "CFrame";
	    "EasingDirection";
	    "EasingStyle";
	    "Weight";
	};
	
	PostEffect = {
	    Inherits = "_Instance";
	    "Enabled";
	};
	
	BloomEffect = {
	    Inherits = "PostEffect";
	    "Intensity";
	    "Size";
	    "Threshold";
	};
	
	BlurEffect = {
	    Inherits = "PostEffect";
	    "Size";
	};
	
	ColorCorrectionEffect = {
	    Inherits = "PostEffect";
	    "Brightness";
	    "Contrast";
	    "Saturation";
	    "TintColor";
	};
	
	SunRaysEffect = {
	    Inherits = "PostEffect";
	    "Intensity";
	    "Spread";
	};
	
	ReflectionMetadata = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataCallbacks = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataClasses = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataEnums = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataEvents = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataFunctions = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataItem = {
	    Inherits = "_Instance";
	    "Browsable";
	    "ClassCategory";
	    "Constraint";
	    "Deprecated";
	    "EditingDisabled";
	    "IsBackend";
	    "ScriptContext";
	    "UIMaximum";
	    "UIMinimum";
	    "UINumTicks";
	    "summary";
	};
	
	ReflectionMetadataClass = {
	    Inherits = "ReflectionMetadataItem";
	    "ExplorerImageIndex";
	    "ExplorerOrder";
	    "Insertable";
	    "PreferredParent";
	    "PreferredParents";
	};
	
	ReflectionMetadataEnum = {
	    Inherits = "ReflectionMetadataItem";
	};
	
	ReflectionMetadataEnumItem = {
	    Inherits = "ReflectionMetadataItem";
	};
	
	ReflectionMetadataMember = {
	    Inherits = "ReflectionMetadataItem";
	};
	
	ReflectionMetadataProperties = {
	    Inherits = "_Instance";
	};
	
	ReflectionMetadataYieldFunctions = {
	    Inherits = "_Instance";
	};
	
	Sky = {
	    Inherits = "_Instance";
	    "CelestialBodiesShown";
	    "MoonAngularSize";
	    "MoonTextureId";
	    "SkyboxBk";
	    "SkyboxDn";
	    "SkyboxFt";
	    "SkyboxLf";
	    "SkyboxRt";
	    "SkyboxUp";
	    "StarCount";
	    "SunAngularSize";
	    "SunTextureId";
	};
	
	Smoke = {
	    Inherits = "_Instance";
	    "Color";
	    "Enabled";
	    "Opacity";
	    "RiseVelocity";
	    "Size";
	};
	
	Sound = {
	    Inherits = "_Instance";
	    "EmitterSize";
	    "Looped";
	    "MaxDistance";
	    "PlayOnRemove";
	    "PlaybackSpeed";
	    "Playing";
	    "RollOffMode";
	    "SoundGroup";
	    "SoundId";
	    "TimePosition";
	    "Volume";
	};
	
	SoundEffect = {
	    Inherits = "_Instance";
	    "Enabled";
	    "Priority";
	};
	
	ChorusSoundEffect = {
	    Inherits = "SoundEffect";
	    "Depth";
	    "Mix";
	    "Rate";
	};
	
	CompressorSoundEffect = {
	    Inherits = "SoundEffect";
	    "Attack";
	    "GainMakeup";
	    "Ratio";
	    "Release";
	    "SideChain";
	    "Threshold";
	};
	
	DistortionSoundEffect = {
	    Inherits = "SoundEffect";
	    "Level";
	};
	
	EchoSoundEffect = {
	    Inherits = "SoundEffect";
	    "Delay";
	    "DryLevel";
	    "Feedback";
	    "WetLevel";
	};
	
	EqualizerSoundEffect = {
	    Inherits = "SoundEffect";
	    "HighGain";
	    "LowGain";
	    "MidGain";
	};
	
	FlangeSoundEffect = {
	    Inherits = "SoundEffect";
	    "Depth";
	    "Mix";
	    "Rate";
	};
	
	PitchShiftSoundEffect = {
	    Inherits = "SoundEffect";
	    "Octave";
	};
	
	ReverbSoundEffect = {
	    Inherits = "SoundEffect";
	    "DecayTime";
	    "Density";
	    "Diffusion";
	    "DryLevel";
	    "WetLevel";
	};
	
	TremoloSoundEffect = {
	    Inherits = "SoundEffect";
	    "Depth";
	    "Duty";
	    "Frequency";
	};
	
	SoundGroup = {
	    Inherits = "_Instance";
	    "Volume";
	};
	
	Sparkles = {
	    Inherits = "_Instance";
	    "Enabled";
	    "SparkleColor";
	};
	
	TotalCountTimeIntervalItem = {
	    Inherits = "StatsItem";
	};
	
	TaskScheduler = {
	    Inherits = "_Instance";
	    "ThreadPoolConfig";
	};
	
	Team = {
	    Inherits = "_Instance";
	    "AutoAssignable";
	    "TeamColor";
	};
	
	TeleportService = {
	    Inherits = "_Instance";
	};
	
	TerrainRegion = {
	    Inherits = "_Instance";
	};
	
	TestService = {
	    Inherits = "_Instance";
	    "AutoRuns";
	    "Description";
	    "ExecuteWithStudioRun";
	    "Is30FpsThrottleEnabled";
	    "IsPhysicsEnvironmentalThrottled";
	    "IsSleepAllowed";
	    "NumberOfPlayers";
	    "SimulateSecondsLag";
	    "Timeout";
	};
	
	TouchInputService = {
	    Inherits = "_Instance";
	};
	
	TouchTransmitter = {
	    Inherits = "_Instance";
	};
	
	Trail = {
	    Inherits = "_Instance";
	    "Attachment0";
	    "Attachment1";
	    "Color";
	    "Enabled";
	    "FaceCamera";
	    "Lifetime";
	    "LightEmission";
	    "LightInfluence";
	    "MaxLength";
	    "MinLength";
	    "Texture";
	    "TextureLength";
	    "TextureMode";
	    "Transparency";
	    "WidthScale";
	};
	
	UIBase = {
	    Inherits = "_Instance";
	};
	
	UIComponent = {
	    Inherits = "UIBase";
	};
	
	UIConstraint = {
	    Inherits = "UIComponent";
	};
	
	UIAspectRatioConstraint = {
	    Inherits = "UIConstraint";
	    "AspectRatio";
	    "AspectType";
	    "DominantAxis";
	};
	
	UISizeConstraint = {
	    Inherits = "UIConstraint";
	    "MaxSize";
	    "MinSize";
	};
	
	UITextSizeConstraint = {
	    Inherits = "UIConstraint";
	    "MaxTextSize";
	    "MinTextSize";
	};
	
	UILayout = {
	    Inherits = "UIComponent";
	};
	
	UIGridStyleLayout = {
	    Inherits = "UILayout";
	    "FillDirection";
	    "HorizontalAlignment";
	    "SortOrder";
	    "VerticalAlignment";
	};
	
	UIGridLayout = {
	    Inherits = "UIGridStyleLayout";
	    "CellPadding";
	    "CellSize";
	    "FillDirectionMaxCells";
	    "StartCorner";
	};
	
	UIListLayout = {
	    Inherits = "UIGridStyleLayout";
	    "Padding";
	};
	
	UIPageLayout = {
	    Inherits = "UIGridStyleLayout";
	    "Animated";
	    "Circular";
	    "EasingDirection";
	    "EasingStyle";
	    "GamepadInputEnabled";
	    "Padding";
	    "ScrollWheelInputEnabled";
	    "TouchInputEnabled";
	    "TweenTime";
	};
	
	UITableLayout = {
	    Inherits = "UIGridStyleLayout";
	    "FillEmptySpaceColumns";
	    "FillEmptySpaceRows";
	    "MajorAxis";
	    "Padding";
	};
	
	UIPadding = {
	    Inherits = "UIComponent";
	    "PaddingBottom";
	    "PaddingLeft";
	    "PaddingRight";
	    "PaddingTop";
	};
	
	UIScale = {
	    Inherits = "UIComponent";
	    "Scale";
	};
	
	VRService = {
	    Inherits = "_Instance";
	    "GuiInputUserCFrame";
	};
	
	ValueBase = {
	    Inherits = "_Instance";
	};
	
	BoolValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	BrickColorValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	CFrameValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	Color3Value = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	IntValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	NumberValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	ObjectValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	RayValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	StringValue = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	Vector3Value = {
	    Inherits = "ValueBase";
	    "Value";
	};
	
	WeldConstraint = {
	    Inherits = "_Instance";
	    "Enabled";
	    "Part0";
	    "Part1";
	};

	CylinderMesh = {
		Inherits = "DataModelMesh";
	};
}

local GetProperties; GetProperties = function(ClassName, Override) --// Recursively Sets all the inherited properties
	local Class = Classes[ClassName]
	local Properties = {}

	local GetInherit; GetInherit = function(Inherit)
		local List = {}
		local Class = Classes[Inherit]
		
		if Classes[Class.Inherits] ~= nil then
			local NewClass = Classes[Class.Inherits]
			
			if NewClass.Inherits ~= nil then
				local Props = GetInherit(NewClass.Inherits)

				for Index, Property in pairs(Props) do
					if Index ~= "Inherits" then
						if Override ~= nil then
							if Property == Override then
								List[Property] = Property
							end
						else
							List[Property] = Property
						end
					end
				end
			end

			for Index, Property in pairs(NewClass) do
				if Index ~= "Inherits" then
					if Override ~= nil then
						if Property == Override then
							List[Property] = Property
						end
					else
						List[Property] = Property
					end
				end
			end
		end
		
		for Index, Property in pairs(Class) do
			if Index ~= "Inherits" then
				if Override ~= nil then
					if Property == Override then
						List[Property] = Property
					end
				else
					List[Property] = Property
				end
			end
		end

		return List
	end

	if Class ~= nil then
		if Class.Inherits ~= nil then
			local Props = GetInherit(Class.Inherits)
			
			for Index, Property in pairs(Props) do
				if Index ~= "Inherits" then
					if Override ~= nil then
						if Property == Override then
							List[Property] = Property
						end
					else
						List[Property] = Property
					end
				end
			end
		end

		for Index, Property in pairs(Class) do
			if Index ~= "Inherits" then
				if Override ~= nil then
					if Property == Override then
						List[Property] = Property
					end
				else
					List[Property] = Property
				end
			end
		end
	else
		warn("[Save]: New Class or Unsupported Class: ".. tostring(ClassName))
	end

	

	return Properties
end

local Save = function(TargetInstance, Override) --// Main call for Save
	local Properties = GetProperties(TargetInstance.ClassName, Override)

	--// Save the values of the properties 
	for Index, N_A in pairs(Properties) do
		Properties[Index] = TargetInstance[Index]
	end

	--// Clean up useless stuffs
	for Property, Value in pairs(Properties) do
		if Property == nil then
			Properties[Property] = nil
		end
	end

	return Properties
end;