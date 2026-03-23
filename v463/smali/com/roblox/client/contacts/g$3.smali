.class Lcom/roblox/client/contacts/g$3;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/g;->a(Lcom/roblox/client/contacts/model/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/model/d;

.field final synthetic b:Lcom/roblox/client/contacts/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/g;Lcom/roblox/client/contacts/model/d;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/roblox/client/contacts/g$3;->b:Lcom/roblox/client/contacts/g;

    iput-object p2, p0, Lcom/roblox/client/contacts/g$3;->a:Lcom/roblox/client/contacts/model/d;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .line 160
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 162
    invoke-static {}, Lcom/roblox/client/b;->cy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/contacts/g$3;->a:Lcom/roblox/client/contacts/model/d;

    .line 165
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contactFriendFinder"

    .line 163
    invoke-static {p1, v0, v1}, Lcom/roblox/client/p;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/contacts/g$3;->b:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->b(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-SetPendingAliasCalled"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/roblox/client/contacts/g$3;->b:Lcom/roblox/client/contacts/g;

    invoke-static {p1}, Lcom/roblox/client/contacts/g;->c(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$a;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/contacts/g$3;->a:Lcom/roblox/client/contacts/model/d;

    new-instance v1, Lcom/roblox/client/contacts/g$3$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/contacts/g$3$1;-><init>(Lcom/roblox/client/contacts/g$3;)V

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/contacts/i$a;->c(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending friend request, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.contacts"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
