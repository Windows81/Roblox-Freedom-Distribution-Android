.class Lcom/roblox/client/contacts/g$2$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/g$2;->a(Lcom/roblox/client/http/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/g$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/g$2;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/roblox/client/contacts/g$2$1;->a:Lcom/roblox/client/contacts/g$2;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/roblox/client/contacts/g$2$1;->a:Lcom/roblox/client/contacts/g$2;

    iget-object p1, p1, Lcom/roblox/client/contacts/g$2;->b:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->b(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-SetAliasSuccess"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending alias request, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.contacts"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/roblox/client/contacts/g$2$1;->a:Lcom/roblox/client/contacts/g$2;

    iget-object p1, p1, Lcom/roblox/client/contacts/g$2;->b:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->b(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-SetAliasError"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
