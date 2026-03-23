.class Lcom/roblox/client/signup/multiscreen/b/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/b/r;


# direct methods
.method private constructor <init>(Lcom/roblox/client/signup/multiscreen/b/r;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/signup/multiscreen/b/r;Lcom/roblox/client/signup/multiscreen/b/r$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/r$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/r;)V

    return-void
.end method

.method private a(IJ)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/r;->c(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/s/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/b/r;->b(Lcom/roblox/client/signup/multiscreen/b/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/roblox/client/s/h;->a(Ljava/lang/String;J)V

    .line 94
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    iget-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {p3}, Lcom/roblox/client/signup/multiscreen/b/r;->d(Lcom/roblox/client/signup/multiscreen/b/r;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/ad/c;->d(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    iget-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {p3}, Lcom/roblox/client/signup/multiscreen/b/r;->e(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/ad/c;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    .line 96
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {}, Lcom/roblox/client/signup/multiscreen/a/g;->a()Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/signup/multiscreen/b/r;->b(Ljava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {p2}, Lcom/roblox/client/signup/multiscreen/b/r;->f(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/b/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/roblox/client/signup/multiscreen/b/q;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/r$a;IJ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/signup/multiscreen/b/r$a;->a(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/r$a;->c(Lcom/roblox/client/signup/f;)V

    return-void
.end method

.method private c(Lcom/roblox/client/signup/f;)V
    .locals 12

    const-string v0, "FailureUnknownError"

    const-string v1, "Android-AppSignup-UnknownError"

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 114
    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v2

    .line 113
    invoke-virtual {p1, v2}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    .line 118
    new-instance p1, Lcom/roblox/client/signup/f;

    invoke-direct {p1}, Lcom/roblox/client/signup/f;-><init>()V

    .line 119
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    .line 120
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 121
    :cond_0
    iget-object v2, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    iget-object v0, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "DumbPassword"

    const-string v6, "PasswordMatchesUsername"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "UsernameTaken"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "StatusServerError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "UsernameContainsInvalidCharacters"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "StatusJsonError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "UsernameInvalid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "StatusThrottled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_7
    const-string v3, "StatusUserIdInvalid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_8
    const-string v3, "PasswordInvalid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_a
    const-string v3, "UsernameCannotContainSpaces"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_b
    const-string v3, "Captcha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 244
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 245
    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    .line 249
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->k:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 236
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    .line 240
    iput-object v5, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-DumbPassword"

    .line 241
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->j:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 227
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    .line 231
    iput-object v6, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-PasswordMatchesUsername"

    .line 232
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 218
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "MissingUserInfo"

    .line 222
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-UserIdInvalid"

    .line 223
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->i:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 209
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureServerError"

    .line 213
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-ServerError"

    .line 214
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 199
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->l:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 200
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureStatusThrottled"

    .line 204
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-Throttled"

    .line 205
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 190
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->i:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 191
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureJSONParse"

    .line 195
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-JsonError"

    .line 196
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 181
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->b:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 182
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureAccountCreateFloodcheck"

    .line 186
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-Captcha"

    .line 187
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_3

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->h:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 173
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureInvalidPassword"

    .line 177
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-PasswordInvalid"

    .line 178
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_3

    .line 163
    :pswitch_8
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->g:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 164
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureInvalidUsername"

    .line 168
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-UsernameInvalid"

    .line 169
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_3

    .line 154
    :pswitch_9
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->f:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 155
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureContainsSpaces"

    .line 159
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-UsernameWithSpaces"

    .line 160
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_3

    .line 145
    :pswitch_a
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->e:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 146
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureInvalidCharacters"

    .line 150
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-UsernameInvalidChars"

    .line 151
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_3

    .line 136
    :pswitch_b
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/g$a;->d:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 137
    invoke-static {v1}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    const-string v0, "FailureAlreadyTaken"

    .line 141
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v0, "Android-AppSignup-UsernameTaken"

    .line 142
    iput-object v0, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_3

    .line 123
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    sget-object v3, Lcom/roblox/client/signup/multiscreen/a/g$a;->c:Lcom/roblox/client/signup/multiscreen/a/g$a;

    .line 124
    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/a/g;->a(Lcom/roblox/client/signup/multiscreen/a/g$a;)Lcom/roblox/client/signup/multiscreen/a/g;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Ljava/lang/Object;)V

    .line 128
    iput-object v0, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    .line 129
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    .line 254
    :goto_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/r;->f(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/b/q;

    move-result-object v1

    iget-object v2, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    iget v4, p1, Lcom/roblox/client/signup/f;->d:I

    iget-object v5, p1, Lcom/roblox/client/signup/f;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/roblox/client/signup/f;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    .line 260
    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/b/r;->b(Lcom/roblox/client/signup/multiscreen/b/r;)Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/b/r;->h(Lcom/roblox/client/signup/multiscreen/b/r;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 254
    invoke-virtual/range {v1 .. v9}, Lcom/roblox/client/signup/multiscreen/b/q;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bd7e5a6 -> :sswitch_b
        -0x70857ef8 -> :sswitch_a
        -0x2d988112 -> :sswitch_9
        -0x281d8d44 -> :sswitch_8
        -0x1089fe21 -> :sswitch_7
        0x299166c1 -> :sswitch_6
        0x4cc2b288 -> :sswitch_5
        0x52643c21 -> :sswitch_4
        0x55c49e0e -> :sswitch_3
        0x6af26f0c -> :sswitch_2
        0x6d40d113 -> :sswitch_1
        0x76252971 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/roblox/client/signup/f;)V
    .locals 11

    .line 72
    iget-wide v0, p1, Lcom/roblox/client/signup/f;->g:J

    .line 75
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/abtesting/a;->b(J)V

    .line 77
    invoke-static {}, Lcom/roblox/client/b;->bP()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/roblox/client/signup/f;->h:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 78
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v2

    iget-wide v3, p1, Lcom/roblox/client/signup/f;->h:J

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "SignUp"

    .line 79
    invoke-static/range {v5 .. v10}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/roblox/client/game/i;->a(Lcom/roblox/client/game/h;)V

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v2}, Lcom/roblox/client/signup/multiscreen/b/r;->a(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/abtesting/a;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/signup/multiscreen/b/r$a$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/b/r$a$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;J)V

    invoke-virtual {v2, v3}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method public b(Lcom/roblox/client/signup/f;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/r$a;->a:Lcom/roblox/client/signup/multiscreen/b/r;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/r;->g(Lcom/roblox/client/signup/multiscreen/b/r;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/r$a$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/multiscreen/b/r$a$2;-><init>(Lcom/roblox/client/signup/multiscreen/b/r$a;Lcom/roblox/client/signup/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
