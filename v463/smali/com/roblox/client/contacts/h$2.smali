.class Lcom/roblox/client/contacts/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxSearchView;

.field final synthetic b:Lcom/roblox/client/contacts/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/h;Lcom/roblox/client/components/RbxSearchView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/roblox/client/contacts/h$2;->b:Lcom/roblox/client/contacts/h;

    iput-object p2, p0, Lcom/roblox/client/contacts/h$2;->a:Lcom/roblox/client/components/RbxSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/roblox/client/contacts/h$2;->b:Lcom/roblox/client/contacts/h;

    invoke-static {v0, p1}, Lcom/roblox/client/contacts/h;->a(Lcom/roblox/client/contacts/h;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const-string p1, "rbx.contacts"

    const-string v0, "Search EditText:afterTextChanged"

    .line 125
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/roblox/client/contacts/h$2;->b:Lcom/roblox/client/contacts/h;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/h;->r()Landroidx/fragment/app/c;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/contacts/h$2;->a:Lcom/roblox/client/components/RbxSearchView;

    invoke-static {p1, v0}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
