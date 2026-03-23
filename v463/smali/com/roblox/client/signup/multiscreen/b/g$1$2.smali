.class Lcom/roblox/client/signup/multiscreen/b/g$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/g$1;->a(Le/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/b;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/g$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/g$1;Le/b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->b:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->a:Le/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->b:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->b:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget v1, v1, Lcom/roblox/client/signup/multiscreen/b/g$1;->a:I

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/c;->b(I)Lcom/roblox/client/signup/multiscreen/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/g;->c(Lcom/roblox/client/signup/multiscreen/b/g;Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->b:Lcom/roblox/client/signup/multiscreen/b/g$1;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/g;->a(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;->a:Le/b;

    .line 69
    invoke-interface {v1}, Le/b;->d()Lc/aa;

    move-result-object v1

    invoke-virtual {v1}, Lc/aa;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/t;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/c;->a(Ljava/lang/String;II)V

    return-void
.end method
