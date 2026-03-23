.class Lcom/roblox/client/signup/multiscreen/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/b;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$2;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$2;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    .line 125
    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Lcom/roblox/client/signup/multiscreen/c/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "focus"

    goto :goto_0

    :cond_0
    const-string p2, "offFocus"

    :goto_0
    const-string v0, "verifyCode"

    .line 124
    invoke-static {p1, v0, p2}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
