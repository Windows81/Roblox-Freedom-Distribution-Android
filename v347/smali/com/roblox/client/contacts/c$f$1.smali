.class Lcom/roblox/client/contacts/c$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/c$f;->a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/model/d;

.field final synthetic b:Lcom/roblox/client/contacts/c$d;

.field final synthetic c:Lcom/roblox/client/contacts/c$f;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/c$f;Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/roblox/client/contacts/c$f$1;->c:Lcom/roblox/client/contacts/c$f;

    iput-object p2, p0, Lcom/roblox/client/contacts/c$f$1;->a:Lcom/roblox/client/contacts/model/d;

    iput-object p3, p0, Lcom/roblox/client/contacts/c$f$1;->b:Lcom/roblox/client/contacts/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f$1;->a:Lcom/roblox/client/contacts/model/d;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f$1;->a:Lcom/roblox/client/contacts/model/d;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->k()V

    .line 197
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f$1;->b:Lcom/roblox/client/contacts/c$d;

    iget-object v1, p0, Lcom/roblox/client/contacts/c$f$1;->a:Lcom/roblox/client/contacts/model/d;

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/c$d;->a(Lcom/roblox/client/contacts/model/d;)V

    .line 199
    iget-object v0, p0, Lcom/roblox/client/contacts/c$f$1;->c:Lcom/roblox/client/contacts/c$f;

    iget-object v1, p0, Lcom/roblox/client/contacts/c$f$1;->a:Lcom/roblox/client/contacts/model/d;

    invoke-virtual {v1}, Lcom/roblox/client/contacts/model/d;->j()I

    move-result v1

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/c$f;->a(Lcom/roblox/client/contacts/c$f;I)V

    .line 201
    :cond_0
    return-void
.end method
