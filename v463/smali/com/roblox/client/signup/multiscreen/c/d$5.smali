.class Lcom/roblox/client/signup/multiscreen/c/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/d;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/roblox/client/signup/multiscreen/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d$5;->a:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/signup/multiscreen/a/i;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d$5;->a:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-static {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/signup/multiscreen/c/d;Lcom/roblox/client/signup/multiscreen/a/i;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 323
    check-cast p1, Lcom/roblox/client/signup/multiscreen/a/i;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d$5;->a(Lcom/roblox/client/signup/multiscreen/a/i;)V

    return-void
.end method
