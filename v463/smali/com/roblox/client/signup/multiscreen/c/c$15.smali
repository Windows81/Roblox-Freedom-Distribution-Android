.class Lcom/roblox/client/signup/multiscreen/c/c$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/c;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c$15;->a:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c$15;->a:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/c;->c(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/signup/multiscreen/e/c;

    move-result-object p1

    const-string v0, "email"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/multiscreen/e/c;->a(Ljava/lang/String;Z)V

    return-void
.end method
