.class public Lcom/roblox/engine/jni/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public assetFolderPath:Ljava/lang/String;

.field public dpiScale:F

.field public isKeyboardDevice:Z

.field public isMouseDevice:Z

.field public isTouchDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/engine/jni/model/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/c;->isTouchDevice:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/c;->isTouchDevice:Z

    .line 17
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/c;->isMouseDevice:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/c;->isMouseDevice:Z

    .line 18
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/c;->isKeyboardDevice:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/c;->isKeyboardDevice:Z

    .line 19
    iget v0, p1, Lcom/roblox/engine/jni/model/c;->dpiScale:F

    iput v0, p0, Lcom/roblox/engine/jni/model/c;->dpiScale:F

    .line 20
    iget-object p1, p1, Lcom/roblox/engine/jni/model/c;->assetFolderPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/roblox/engine/jni/model/c;->assetFolderPath:Ljava/lang/String;

    :cond_0
    return-void
.end method
