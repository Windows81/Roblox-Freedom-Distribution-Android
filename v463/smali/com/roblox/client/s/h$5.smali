.class Lcom/roblox/client/s/h$5;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/h;->a(Lcom/roblox/client/t/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/t/c$a;

.field final synthetic b:Lcom/roblox/client/s/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/h;Lcom/roblox/client/t/c$a;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/roblox/client/s/h$5;->b:Lcom/roblox/client/s/h;

    iput-object p2, p0, Lcom/roblox/client/s/h$5;->a:Lcom/roblox/client/t/c$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.login"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    const/4 v1, -0x1

    const-string v2, "logout"

    invoke-static {v2, v0, p1, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 404
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object p1

    invoke-static {}, Lcom/roblox/client/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/roblox/platform/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/s/h$5;->a:Lcom/roblox/client/t/c$a;

    if-eqz p1, :cond_1

    .line 407
    invoke-interface {p1}, Lcom/roblox/client/t/c$a;->a()V

    :cond_1
    return-void
.end method
