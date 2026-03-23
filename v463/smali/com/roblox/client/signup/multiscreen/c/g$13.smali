.class Lcom/roblox/client/signup/multiscreen/c/g$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$13;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$13;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object p1

    const-string v0, "username"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;Z)V

    return-void
.end method
