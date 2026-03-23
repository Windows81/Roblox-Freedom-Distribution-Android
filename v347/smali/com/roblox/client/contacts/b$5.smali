.class Lcom/roblox/client/contacts/b$5;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b;->a(Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/d;

.field final synthetic b:Lcom/roblox/client/contacts/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/roblox/client/contacts/b$5;->b:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$5;->a:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/roblox/client/http/i;->a(Lcom/roblox/client/http/j;)V

    .line 412
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    .line 414
    const-string v1, "rbx.contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/roblox/client/contacts/b$5;->a:Lcom/roblox/client/contacts/d;

    invoke-interface {v0}, Lcom/roblox/client/contacts/d;->b()V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/b$5;->a:Lcom/roblox/client/contacts/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->b(I)V

    goto :goto_0
.end method
