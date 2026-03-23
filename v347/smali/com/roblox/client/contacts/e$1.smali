.class Lcom/roblox/client/contacts/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/contacts/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/e;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/f;

.field final synthetic b:Lcom/roblox/client/contacts/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/e;Lcom/roblox/client/contacts/f;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/roblox/client/contacts/e$1;->b:Lcom/roblox/client/contacts/e;

    iput-object p2, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0}, Lcom/roblox/client/contacts/f;->a()V

    .line 41
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/f;->a(I)V

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->b:Lcom/roblox/client/contacts/e;

    invoke-static {v0, p1}, Lcom/roblox/client/contacts/e;->a(Lcom/roblox/client/contacts/e;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/f;->a(Ljava/util/ArrayList;)V

    .line 56
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/f;->a(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0}, Lcom/roblox/client/contacts/f;->b()V

    .line 46
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/contacts/e$1;->a:Lcom/roblox/client/contacts/f;

    invoke-interface {v0, p1}, Lcom/roblox/client/contacts/f;->b(I)V

    .line 66
    return-void
.end method
