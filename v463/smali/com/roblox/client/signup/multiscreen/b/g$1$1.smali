.class Lcom/roblox/client/signup/multiscreen/b/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/g$1;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Le/b;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/g$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/g$1;Le/l;Le/b;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->a:Le/l;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->b:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 47
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 48
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->a:Le/l;

    invoke-virtual {v1}, Le/l;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/b/c;

    move-result-object v0

    const-string v1, "Android-VAppSignup-ChangeGenderSuccess"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/c;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget v1, v1, Lcom/roblox/client/signup/multiscreen/b/g$1;->a:I

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/c;->a(I)Lcom/roblox/client/signup/multiscreen/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget v2, v2, Lcom/roblox/client/signup/multiscreen/b/g$1;->a:I

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/a/c;->b(I)Lcom/roblox/client/signup/multiscreen/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/b/g;->b(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->c:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v1, v1, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$1;->b:Le/b;

    .line 54
    invoke-interface {v2}, Le/b;->d()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->h()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    .line 56
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->c()I

    move-result v0

    .line 53
    invoke-virtual {v1, v2, v3, v0}, Lcom/roblox/client/signup/multiscreen/b/c;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
