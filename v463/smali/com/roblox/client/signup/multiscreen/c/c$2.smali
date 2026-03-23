.class Lcom/roblox/client/signup/multiscreen/c/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/c;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/roblox/client/signup/multiscreen/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/c;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c$2;->a:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$2;->a:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/signup/multiscreen/a/d;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Lcom/roblox/client/signup/multiscreen/a/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c$2;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    return-void
.end method
