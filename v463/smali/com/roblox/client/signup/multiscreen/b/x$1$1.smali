.class Lcom/roblox/client/signup/multiscreen/b/x$1$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/x$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/x$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/x$1;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x$1$1;->b:Lcom/roblox/client/signup/multiscreen/b/x$1;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernameValidatorImpl"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$1$1;->b:Lcom/roblox/client/signup/multiscreen/b/x$1;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$1;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->b(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/x$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/multiscreen/b/x$1$1$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/x$1$1;Lcom/roblox/client/http/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
