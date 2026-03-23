.class Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/z$1$1;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Le/b;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/z$1$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/z$1$1;Le/l;Le/b;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/z$1$1;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->a:Le/l;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->b:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->a:Le/l;

    invoke-virtual {v2}, Le/l;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". ErrorBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->b:Le/b;

    .line 107
    invoke-interface {v2}, Le/b;->d()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifiedSignUpLiveData"

    .line 106
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/z$1$1;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/z$1$1;->a:Lcom/roblox/client/signup/multiscreen/b/z$1;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/z$1;->e:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/z$1$1$1;->b:Le/b;

    invoke-interface {v2}, Le/b;->d()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Lcom/roblox/client/signup/multiscreen/b/z;Ljava/lang/String;Lcom/roblox/platform/http/returntypes/b;)V

    return-void
.end method
