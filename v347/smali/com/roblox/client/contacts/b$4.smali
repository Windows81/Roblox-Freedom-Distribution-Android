.class Lcom/roblox/client/contacts/b$4;
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
    .line 349
    iput-object p1, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    iput-object p2, p0, Lcom/roblox/client/contacts/b$4;->a:Lcom/roblox/client/contacts/d;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 6

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    .line 354
    const-string v1, "rbx.contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Match responseCode:"

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

    .line 356
    iget-object v1, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->c(Lcom/roblox/client/contacts/b;)Lcom/roblox/client/util/p$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->f(Lcom/roblox/client/contacts/b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 357
    const-string v1, "Contacts"

    const-string v4, "ServerMatchedContacts"

    invoke-static {v1, v4, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 359
    packed-switch v0, :pswitch_data_0

    .line 373
    const-string v1, "Contacts"

    const-string v2, "FailureContactsSync"

    .line 375
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4;->a:Lcom/roblox/client/contacts/d;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->b(I)V

    .line 379
    :goto_0
    return-void

    .line 361
    :pswitch_0
    const-string v1, "Contacts"

    const-string v2, "Success"

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->c(Lcom/roblox/client/contacts/b;)Lcom/roblox/client/util/p$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;J)J

    .line 366
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4;->b:Lcom/roblox/client/contacts/b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/contacts/b$4;->a:Lcom/roblox/client/contacts/d;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    .line 367
    iget-object v0, p0, Lcom/roblox/client/contacts/b$4;->a:Lcom/roblox/client/contacts/d;

    invoke-interface {v0}, Lcom/roblox/client/contacts/d;->a()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
