.class Lcom/roblox/client/signup/multiscreen/b/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/x;->d(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/a/a;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/b/x;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->d:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 196
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "Empty"

    goto/16 :goto_1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->f:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 204
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "TooShort"

    goto/16 :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    .line 211
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->f:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 212
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 211
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "TooLong"

    goto/16 :goto_1

    .line 218
    :cond_2
    invoke-static {}, Lcom/roblox/client/signup/multiscreen/b/x;->f()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->p:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 220
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "InvalidCharacters"

    goto/16 :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;C)I

    move-result v0

    if-le v0, v1, :cond_5

    .line 235
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->h:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 236
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "InvalidUsernameDoubleUnderscore"

    goto :goto_1

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->d(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/d/b;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->d(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/d/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/d/b;->cancel(Z)Z

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v4, Lcom/roblox/client/signup/multiscreen/a/h$a;->l:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 247
    invoke-static {v3, v4}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v3

    .line 246
    invoke-virtual {v0, v3}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    .line 252
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->b:Lcom/roblox/client/signup/multiscreen/a/a;

    invoke-static {v0, v3, v4}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/d/b;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;Lcom/roblox/client/signup/multiscreen/d/b;)Lcom/roblox/client/signup/multiscreen/d/b;

    .line 253
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/x;->d(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/d/b;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, ""

    goto :goto_1

    .line 227
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/h$a;->g:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 228
    invoke-static {v2, v3}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    const-string v0, "InvalidFirstOrLastCharacter"

    .line 256
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 257
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/x$2;->c:Lcom/roblox/client/signup/multiscreen/b/x;

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/x;->a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->a(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method
