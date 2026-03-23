.class Lcom/roblox/client/contacts/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .prologue
    .line 114
    iput-object p1, p0, Lcom/roblox/client/contacts/h$1;->a:Lcom/roblox/client/contacts/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/roblox/client/contacts/h$1;->a:Lcom/roblox/client/contacts/h;

    invoke-static {v0}, Lcom/roblox/client/contacts/h;->a(Lcom/roblox/client/contacts/h;)Lcom/roblox/client/contacts/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/contacts/h$a;->n()V

    .line 118
    return-void
.end method
