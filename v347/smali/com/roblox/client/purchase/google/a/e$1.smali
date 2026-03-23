.class Lcom/roblox/client/purchase/google/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/a/e$d;

.field final synthetic b:Lcom/roblox/client/purchase/google/a/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/a/e;Lcom/roblox/client/purchase/google/a/e$d;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean v0, v0, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    invoke-static {p2}, Lcom/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    .line 227
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object v0, v0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object v1, v1, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    new-instance v2, Lcom/roblox/client/purchase/google/a/f;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/roblox/client/purchase/google/a/e;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    new-instance v2, Lcom/roblox/client/purchase/google/a/f;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    .line 262
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 243
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object v1, v1, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 247
    if-nez v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/roblox/client/purchase/google/a/e;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    new-instance v1, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/a/a/a;

    .line 218
    return-void
.end method
