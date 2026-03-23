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
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/roblox/engine/b$c;->a:Lcom/roblox/engine/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1167
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/roblox/engine/b$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1173
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 1176
    :cond_0
    iget-object p1, p0, Lcom/roblox/engine/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/engine/b;

    if-eqz p1, :cond_4

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1180
    invoke-static {p1}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0xbb8

    if-ge v5, v3, :cond_3

    .line 1183
    invoke-static {p1}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    check-cast v8, [J

    if-eqz v8, :cond_2

    .line 1186
    aget-wide v9, v8, v4

    sub-long v9, v1, v9

    cmp-long v11, v9, v6

    if-lez v11, :cond_2

    .line 1190
    invoke-static {p1}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1191
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1193
    invoke-static {v6}, Lcom/roblox/engine/jni/NativeInputInterface;->nativeGamepadDisconnectEvent(I)V

    .line 1194
    invoke-static {p1}, Lcom/roblox/engine/b;->c(Lcom/roblox/engine/b;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 1198
    :cond_1
    aput-wide v1, v8, v4

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1203
    :cond_3
    invoke-virtual {p0, v0, v6, v7}, Lcom/roblox/engine/b$c;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_2
    return-void
.end method
