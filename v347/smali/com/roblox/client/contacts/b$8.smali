.class Lcom/roblox/client/contacts/b$8;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/d;)V
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
    .line 605
    iput-object p1, p0, Lcom/roblox/client/contacts/b$8;->b:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$8;->a:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 3

    .prologue
    .line 608
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    .line 609
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/roblox/client/contacts/b$8;->b:Lcom/roblox/client/contacts/b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/contacts/b$8;->a:Lcom/roblox/client/contacts/d;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/contacts/b;->b(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    .line 616
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v1, "Contacts"

    const-string v2, "FailureContactsAvatarFetch"

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
