.class Lcom/roblox/client/i/h$4;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/h;->a(Lcom/roblox/client/j/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/j/b$a;

.field final synthetic b:Lcom/roblox/client/i/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/h;Lcom/roblox/client/j/b$a;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/roblox/client/i/h$4;->b:Lcom/roblox/client/i/h;

    iput-object p2, p0, Lcom/roblox/client/i/h$4;->a:Lcom/roblox/client/j/b$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .prologue
    .line 344
    const-string v0, "rbx.login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 347
    invoke-static {}, Lcom/roblox/client/http/b;->c()Lcom/roblox/platform/http/b;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/platform/http/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/h$4;->a:Lcom/roblox/client/j/b$a;

    invoke-interface {v0}, Lcom/roblox/client/j/b$a;->a()V

    .line 350
    return-void
.end method
