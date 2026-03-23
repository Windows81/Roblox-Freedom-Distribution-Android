.class Lcom/roblox/client/signup/multiscreen/b/x$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/x$3;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Le/b;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/x$3;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/x$3;Le/l;Le/b;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->b:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    invoke-virtual {v1}, Le/l;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". ErrorBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    invoke-virtual {v1}, Le/l;->f()Lc/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    .line 298
    invoke-virtual {v1}, Le/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    invoke-virtual {v1}, Le/l;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernameValidatorImpl"

    .line 297
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 300
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v0

    const-string v1, "Android-VAppSignup-ChangeUsernameSuccess"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->f(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/ad/b;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/x;->e(Lcom/roblox/client/signup/multiscreen/b/x;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Username"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ad/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->g(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/ad/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/x;->e(Lcom/roblox/client/signup/multiscreen/b/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->b(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    .line 306
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/x;->e(Lcom/roblox/client/signup/multiscreen/b/x;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/h$a;->r:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 305
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v2, v2, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    .line 312
    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/x;->e(Lcom/roblox/client/signup/multiscreen/b/x;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->q:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 311
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    .line 315
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->c:Lcom/roblox/client/signup/multiscreen/b/x$3;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/x$3;->a:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$3$1;->b:Le/b;

    .line 316
    invoke-interface {v2}, Le/b;->d()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->h()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    .line 318
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->c()I

    move-result v0

    .line 315
    invoke-virtual {v1, v2, v3, v0}, Lcom/roblox/client/signup/multiscreen/b/s;->b(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
