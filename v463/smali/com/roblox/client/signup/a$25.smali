.class Lcom/roblox/client/signup/a$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/roblox/client/signup/a$25;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/roblox/client/signup/a$25;->a:Lcom/roblox/client/signup/a;

    const-string v0, "email"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;Z)V

    return-void
.end method
