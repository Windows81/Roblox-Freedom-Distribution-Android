.class public Lcom/roblox/client/contacts/model/c;
.super Lcom/roblox/client/contacts/model/a;
.source "SourceFile"


# instance fields
.field private d:Lcom/roblox/client/contacts/model/ContactRequestObject;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/model/a;-><init>(JLjava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/contacts/model/c;->e:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lcom/roblox/client/contacts/model/ContactRequestObject;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/contacts/model/ContactRequestObject;-><init>(J)V

    iput-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "Phone"

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/b;

    .line 36
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "Phone"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/contacts/model/b;

    invoke-direct {v1, p1, p2}, Lcom/roblox/client/contacts/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "Phone"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "FirstName"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public d()Lcom/roblox/client/contacts/model/ContactRequestObject;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "MiddleName"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "LastName"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/roblox/client/contacts/model/c;->d:Lcom/roblox/client/contacts/model/ContactRequestObject;

    const-string v1, "Country"

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/contacts/model/ContactRequestObject;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method
