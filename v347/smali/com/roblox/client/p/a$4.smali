.class Lcom/roblox/client/p/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/p/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/p/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/p/a;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0e001f

    .line 204
    const-string v0, "Fragment2SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 225
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-virtual {v0, v3}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e001d

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-virtual {v0, v3}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch -0x3ed
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v3, 0x7f0e001e

    invoke-virtual {v2, v3}, Lcom/roblox/client/p/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/p/a;->a(Lcom/roblox/client/p/a;ZLjava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-direct {p0, p1}, Lcom/roblox/client/p/a$4;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/p/a;->alertMessageFromServerOkButton(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/roblox/client/p/a;->a(Lcom/roblox/client/p/a;ZLjava/lang/String;)V

    .line 201
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-static {v0}, Lcom/roblox/client/p/a;->b(Lcom/roblox/client/p/a;)Lcom/roblox/client/p/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-static {v0}, Lcom/roblox/client/p/a;->b(Lcom/roblox/client/p/a;)Lcom/roblox/client/p/a$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/p/a$a;->a(J)V

    .line 181
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-static {v0, p1}, Lcom/roblox/client/p/a;->a(Lcom/roblox/client/p/a;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    invoke-static {v0, p2}, Lcom/roblox/client/p/a;->b(Lcom/roblox/client/p/a;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/p/a;->showToast(II)V

    .line 188
    iget-object v0, p0, Lcom/roblox/client/p/a$4;->a:Lcom/roblox/client/p/a;

    const-string v1, ""

    invoke-static {v0, v2, v1}, Lcom/roblox/client/p/a;->a(Lcom/roblox/client/p/a;ZLjava/lang/String;)V

    .line 189
    return-void
.end method
