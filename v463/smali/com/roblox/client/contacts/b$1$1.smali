.class Lcom/roblox/client/contacts/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/contacts/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/roblox/client/contacts/b$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/contacts/b$1;ILjava/util/ArrayList;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iput p2, p0, Lcom/roblox/client/contacts/b$1$1;->a:I

    iput-object p3, p0, Lcom/roblox/client/contacts/b$1$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unique contacts fetched. Total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v1, v1, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.contacts"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 157
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$1;->c:Lcom/roblox/client/contacts/d;

    iget v1, p0, Lcom/roblox/client/contacts/b$1$1;->a:I

    invoke-interface {v0, v1}, Lcom/roblox/client/contacts/d;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v0}, Lcom/roblox/client/contacts/b;->c(Lcom/roblox/client/contacts/b;)Lcom/roblox/client/ae/v$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/ae/v$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v2, v2, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    invoke-static {v2}, Lcom/roblox/client/contacts/b;->d(Lcom/roblox/client/contacts/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "Contacts"

    const-string v3, "LocalContactsProcessed"

    .line 160
    invoke-static {v2, v3, v0, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 162
    iget-object v0, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v0, v0, Lcom/roblox/client/contacts/b$1;->d:Lcom/roblox/client/contacts/b;

    iget-object v1, p0, Lcom/roblox/client/contacts/b$1$1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/roblox/client/contacts/b$1$1;->c:Lcom/roblox/client/contacts/b$1;

    iget-object v2, v2, Lcom/roblox/client/contacts/b$1;->c:Lcom/roblox/client/contacts/d;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/b;Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V

    return-void
.end method
