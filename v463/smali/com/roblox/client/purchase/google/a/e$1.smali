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

    .line 246
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 255
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean p1, p1, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v0, "Billing service connected."

    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    invoke-static {p2}, Lcom/a/b/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/b/a/a;

    move-result-object p2

    iput-object p2, p1, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    .line 260
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object p1, p1, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 262
    :try_start_0
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking for in-app billing support. Api level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget v1, v1, Lcom/roblox/client/purchase/google/a/e;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object p2, p2, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget v0, v0, Lcom/roblox/client/purchase/google/a/e;->n:I

    const-string v1, "inapp"

    invoke-interface {p2, v0, p1, v1}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 267
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    new-instance v1, Lcom/roblox/client/purchase/google/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking for billing support. Api level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget v3, v3, Lcom/roblox/client/purchase/google/a/e;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iput-boolean v0, p1, Lcom/roblox/client/purchase/google/a/e;->e:Z

    return-void

    .line 276
    :cond_2
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing version supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget-object p2, p2, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iget v1, v1, Lcom/roblox/client/purchase/google/a/e;->n:I

    const-string v2, "subs"

    invoke-interface {p2, v1, p1, v2}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 281
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {p1, v1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iput-boolean p2, p1, Lcom/roblox/client/purchase/google/a/e;->e:Z

    goto :goto_0

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 288
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    iput-boolean p2, p1, Lcom/roblox/client/purchase/google/a/e;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz p1, :cond_4

    .line 300
    new-instance p2, Lcom/roblox/client/purchase/google/a/f;

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 291
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e$1;->a:Lcom/roblox/client/purchase/google/a/e$d;

    if-eqz p2, :cond_5

    .line 292
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    .line 295
    :cond_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e$1;->b:Lcom/roblox/client/purchase/google/a/e;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    return-void
.end method
