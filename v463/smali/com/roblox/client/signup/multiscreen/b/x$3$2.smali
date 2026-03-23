.class Lcom/roblox/client/signup/multiscreen/b/x$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/x$3;->a(Le/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Le/b;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/x$3;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/x$3;Ljava/lang/Throwable;Le/b;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->a:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->b:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSignUp.onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernameValidatorImpl"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/h$a;->q:Lcom/roblox/client/signup/multiscreen/a/h$a;

    const-string v2, "username"

    .line 331
    invoke-static {v2, v1}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    .line 336
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$2;->b:Le/b;

    .line 337
    invoke-interface {v1}, Le/b;->d()Lc/aa;

    move-result-object v1

    invoke-virtual {v1}, Lc/aa;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/t;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 336
    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/s;->b(Ljava/lang/String;II)V

    return-void
.end method
