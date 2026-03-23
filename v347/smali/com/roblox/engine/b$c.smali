.class Lcom/roblox/engine/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/engine/b;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/roblox/engine/b;Lcom/roblox/engine/b;)V
    .locals 1

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/roblox/engine/b$c;->a:Lcom/roblox/engine/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/engine/b$c;->b:Ljava/lang/ref/WeakReference;

    .line 1106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v3, 0x0

    .line 1111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1114
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/engine/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/b;

    .line 1115
    if-eqz v0, :cond_0

    .line 1117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1118
    invoke-static {v0}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v2, v3

    .line 1119
    :goto_1
    if-ge v2, v6, :cond_3

    .line 1121
    invoke-static {v0}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    check-cast v1, [J

    .line 1122
    if-eqz v1, :cond_1

    .line 1124
    aget-wide v8, v1, v3

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 1128
    invoke-static {v0}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1129
    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1131
    invoke-static {v7}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeGamepadDisconnectEvent(I)V

    .line 1132
    invoke-static {v0}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 1119
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1136
    :cond_2
    aput-wide v4, v1, v3

    goto :goto_2

    .line 1141
    :cond_3
    const/16 v0, 0x65

    invoke-virtual {p0, v0, v10, v11}, Lcom/roblox/engine/b$c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
