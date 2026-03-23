.class Lcom/roblox/client/contacts/b$3;
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

    .line 386
    iput-object p1, p0, Lcom/roblox/client/contacts/b$3;->b:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$3;->a:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 389
    invoke-super {p0, p1}, Lcom/roblox/client/http/i;->a(Lcom/roblox/client/http/j;)V

    .line 390
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update responseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.contacts"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 395
    iget-object p1, p0, Lcom/roblox/client/contacts/b$3;->a:Lcom/roblox/client/contacts/d;

    invoke-interface {p1}, Lcom/roblox/client/contacts/d;->b()V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/b$3;->a:Lcom/roblox/client/contacts/d;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/roblox/client/contacts/d;->b(I)V

    :goto_0
    return-void
.end method
