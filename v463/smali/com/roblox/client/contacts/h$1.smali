.class Lcom/roblox/client/contacts/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/h;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/roblox/client/contacts/h$1;->a:Lcom/roblox/client/contacts/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/roblox/client/contacts/h$1;->a:Lcom/roblox/client/contacts/h;

    invoke-static {p1}, Lcom/roblox/client/contacts/h;->a(Lcom/roblox/client/contacts/h;)Lcom/roblox/client/contacts/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/contacts/h$a;->r()V

    return-void
.end method
