.class Lcom/roblox/client/ab/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ab/d;->a(Landroidx/lifecycle/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/roblox/client/ab/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ab/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/ab/d;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/roblox/client/ab/d$1;->a:Lcom/roblox/client/ab/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/roblox/client/ab/d$1;->a:Lcom/roblox/client/ab/d;

    invoke-static {v0}, Lcom/roblox/client/ab/d;->a(Lcom/roblox/client/ab/d;)Lcom/roblox/client/ab/d$a;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/roblox/client/ad/c;->a:Lcom/roblox/client/ab/e;

    :goto_0
    invoke-interface {v0, p1}, Lcom/roblox/client/ab/d$a;->a(Lcom/roblox/client/ab/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/roblox/client/ab/e;

    invoke-virtual {p0, p1}, Lcom/roblox/client/ab/d$1;->a(Lcom/roblox/client/ab/e;)V

    return-void
.end method
