.class Lcom/roblox/engine/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/b;->a(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/engine/b;


# direct methods
.method constructor <init>(Lcom/roblox/engine/b;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/roblox/engine/b$2;->a:Lcom/roblox/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/16 v2, 0x6c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 538
    .line 540
    sparse-switch p2, :sswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 542
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    .line 543
    if-eqz v4, :cond_0

    .line 548
    const v3, 0x1000411

    .line 549
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_4

    move v3, v1

    .line 550
    :goto_1
    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_1

    .line 552
    new-array v3, v1, [I

    .line 553
    aput v2, v3, v0

    .line 554
    new-array v5, v1, [Z

    .line 555
    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v3

    .line 556
    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    move p2, v2

    .line 565
    :cond_1
    const/16 v2, 0x52

    if-eq p2, v2, :cond_0

    .line 586
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const/16 v3, 0x401

    if-eq v2, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const v3, 0x1000010

    if-ne v2, v3, :cond_0

    .line 589
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 593
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 594
    iget-object v3, p0, Lcom/roblox/engine/b$2;->a:Lcom/roblox/engine/b;

    invoke-static {v3, v2}, Lcom/roblox/engine/b;->a(Lcom/roblox/engine/b;I)V

    .line 595
    invoke-static {v2, p2, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeGamepadButtonEvent(III)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v0

    .line 549
    goto :goto_1

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x52 -> :sswitch_0
        0x60 -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6a -> :sswitch_1
        0x6b -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
    .end sparse-switch
.end method
