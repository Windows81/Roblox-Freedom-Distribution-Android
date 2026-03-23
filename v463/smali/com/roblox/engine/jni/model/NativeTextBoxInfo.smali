.class public Lcom/roblox/engine/jni/model/NativeTextBoxInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public font:I

.field public fontSize:F

.field public height:F

.field public manualFocusRelease:Z

.field public multiline:Z

.field public returnKeyType:I

.field public textColor:I

.field public textInputType:I

.field public width:F

.field public x:F

.field public xAlignment:I

.field public y:F

.field public yAlignment:I


# direct methods
.method public constructor <init>(FFFFFZIIIIIIZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->x:F

    .line 35
    iput p2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->y:F

    .line 36
    iput p3, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->width:F

    .line 37
    iput p4, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->height:F

    .line 38
    iput p5, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->fontSize:F

    .line 39
    iput-boolean p6, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->multiline:Z

    .line 40
    iput p7, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->xAlignment:I

    .line 41
    iput p8, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->yAlignment:I

    .line 42
    iput p9, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textColor:I

    .line 43
    iput p10, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->font:I

    .line 44
    iput p11, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textInputType:I

    .line 45
    iput p12, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->returnKeyType:I

    .line 46
    iput-boolean p13, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->manualFocusRelease:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;

    if-eqz v1, :cond_1

    .line 55
    check-cast p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;

    .line 56
    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->x:F

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->y:F

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->width:F

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->height:F

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->fontSize:F

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->fontSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->multiline:Z

    iget-boolean v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->multiline:Z

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->xAlignment:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->xAlignment:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->yAlignment:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->yAlignment:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textColor:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textColor:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->font:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->font:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textInputType:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->textInputType:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->returnKeyType:I

    iget v2, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->returnKeyType:I

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->manualFocusRelease:Z

    iget-boolean v1, p0, Lcom/roblox/engine/jni/model/NativeTextBoxInfo;->manualFocusRelease:Z

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
