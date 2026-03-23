.class Lcom/roblox/client/contacts/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/contacts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/g;->a(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/g;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {v0}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/contacts/i$c;->as()V

    .line 66
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {v0, p1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;I)V

    .line 60
    iget-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/contacts/i$c;->ar()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/contacts/i$c;->at()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {v0}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$c;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {v0}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/i$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/contacts/g;->b(Lcom/roblox/client/contacts/g;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {p1, v1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;Z)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/roblox/client/contacts/i$c;->e(I)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/contacts/g$1;->a:Lcom/roblox/client/contacts/g;

    invoke-static {p1, v1}, Lcom/roblox/client/contacts/g;->b(Lcom/roblox/client/contacts/g;Z)V

    :goto_1
    return-void
.end method
