.class Lcom/roblox/client/i/e$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/e;


# direct methods
.method private constructor <init>(Lcom/roblox/client/i/e;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/roblox/client/i/e$b;->a:Lcom/roblox/client/i/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/i/e;Lcom/roblox/client/i/e$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/roblox/client/i/e$b;-><init>(Lcom/roblox/client/i/e;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/roblox/client/i/e$b;->a:Lcom/roblox/client/i/e;

    invoke-static {v2, v0, v1}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e;ILandroid/os/Bundle;)V

    .line 254
    const-string v2, "NotificationManager"

    const-string v3, "NotificationManager.handleMessage remote %d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
