.class public Lcom/roblox/engine/components/NativeTextBoxInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fontSize:F

.field public height:F

.field public multiline:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->x:F

    .line 21
    iput p2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->y:F

    .line 22
    iput p3, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->width:F

    .line 23
    iput p4, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->height:F

    .line 24
    iput p5, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->fontSize:F

    .line 25
    iput-boolean p6, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->multiline:Z

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 30
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    instance-of v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;

    if-eqz v1, :cond_2

    .line 34
    check-cast p1, Lcom/roblox/engine/components/NativeTextBoxInfo;

    .line 35
    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->x:F

    iget v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->y:F

    iget v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->width:F

    iget v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->height:F

    iget v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->fontSize:F

    iget v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->fontSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->multiline:Z

    iget-boolean v2, p0, Lcom/roblox/engine/components/NativeTextBoxInfo;->multiline:Z

    if-eq v1, v2, :cond_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
