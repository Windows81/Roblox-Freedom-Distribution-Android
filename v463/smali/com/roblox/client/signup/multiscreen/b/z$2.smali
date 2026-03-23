.class Lcom/roblox/client/signup/multiscreen/b/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/z;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lcom/roblox/platform/http/returntypes/auth/SignUpVoucherResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/b/z;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/z;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/z$2;->a:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpVoucherResponseBody;",
            ">;",
            "Le/l<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpVoucherResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$2;->a:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->c(Lcom/roblox/client/signup/multiscreen/b/z;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/z$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/signup/multiscreen/b/z$2$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/z$2;Le/l;Le/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/auth/SignUpVoucherResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/z$2;->a:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->c(Lcom/roblox/client/signup/multiscreen/b/z;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/z$2$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/signup/multiscreen/b/z$2$2;-><init>(Lcom/roblox/client/signup/multiscreen/b/z$2;Ljava/lang/Throwable;Le/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
