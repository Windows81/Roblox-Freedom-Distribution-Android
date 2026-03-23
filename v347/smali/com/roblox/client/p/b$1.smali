.class Lcom/roblox/client/p/b$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/p/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/p/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/p/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/p/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/p/b;Lcom/roblox/client/p/b$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/roblox/client/p/b$1;->c:Lcom/roblox/client/p/b;

    iput-object p2, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b$a;

    iput-object p3, p0, Lcom/roblox/client/p/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v3, -0x3e8

    .line 55
    .line 57
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    .line 58
    const/4 v2, 0x0

    .line 60
    const/16 v0, 0xc8

    if-ne v1, v0, :cond_1

    .line 61
    const-string v0, "rbx.2sv"

    const-string v1, "callVerify2SVCode. 2SV code verified."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/roblox/client/p/b$1;->c:Lcom/roblox/client/p/b;

    invoke-static {v0}, Lcom/roblox/client/p/b;->a(Lcom/roblox/client/p/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(I)V

    .line 64
    const-wide/16 v0, -0x1

    .line 66
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v6, "userId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 73
    :goto_0
    iget-object v5, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b$a;

    invoke-interface {v5, v0, v1}, Lcom/roblox/client/p/b$a;->a(J)V

    move v0, v2

    move v1, v3

    move-object v2, v4

    .line 145
    :goto_1
    if-eqz v2, :cond_0

    .line 146
    const-string v3, "rbx.2sv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM.callVerify2SVCode() code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p0, Lcom/roblox/client/p/b$1;->c:Lcom/roblox/client/p/b;

    invoke-static {v3}, Lcom/roblox/client/p/b;->a(Lcom/roblox/client/p/b;)Lcom/roblox/client/i/f;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/p/b$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b$a;

    invoke-interface {v0, v1}, Lcom/roblox/client/p/b$a;->a(I)V

    .line 155
    :cond_0
    return-void

    .line 68
    :catch_0
    move-exception v5

    .line 69
    const-string v5, "rbx.2sv"

    const-string v6, "callVerify2SVCode. Error parsing server response on 200."

    invoke-static {v5, v6}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    new-instance v0, Lcom/roblox/client/p/b$b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/roblox/client/p/b$b;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v0

    move-object v0, v4

    move-object v4, v7

    .line 83
    :goto_2
    if-eqz v4, :cond_2

    .line 84
    sparse-switch v1, :sswitch_data_0

    .line 139
    const-string v0, "FailureUnknownError"

    move v1, v3

    move v7, v2

    move-object v2, v0

    move v0, v7

    goto :goto_1

    .line 78
    :catch_1
    move-exception v0

    .line 80
    const-string v0, "FailureJSON"

    goto :goto_2

    .line 86
    :sswitch_0
    iget v0, v4, Lcom/roblox/client/p/b$b;->a:I

    .line 87
    packed-switch v0, :pswitch_data_0

    .line 117
    :pswitch_0
    const-string v0, "FailureUnknownError"

    move v1, v3

    move v7, v2

    move-object v2, v0

    move v0, v7

    .line 118
    goto :goto_1

    .line 91
    :pswitch_1
    const/16 v0, -0x3e9

    .line 92
    const-string v1, "Failure2SVUserNotFound"

    move v7, v2

    move-object v2, v1

    move v1, v0

    move v0, v7

    .line 93
    goto :goto_1

    .line 97
    :pswitch_2
    const/16 v0, -0x3ea

    .line 98
    const-string v1, "Failure2SVDisabled"

    move v7, v2

    move-object v2, v1

    move v1, v0

    move v0, v7

    .line 99
    goto :goto_1

    .line 104
    :pswitch_3
    const/16 v0, -0x3eb

    .line 105
    const-string v1, "Failure2SVCredentialsCheck"

    move v7, v2

    move-object v2, v1

    move v1, v0

    move v0, v7

    .line 106
    goto/16 :goto_1

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b$a;

    invoke-interface {v0}, Lcom/roblox/client/p/b$a;->a()V

    .line 112
    const-string v1, "Failure2SVInvalidCode"

    .line 113
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v3

    .line 114
    goto/16 :goto_1

    .line 123
    :sswitch_1
    const/16 v0, -0x3ec

    .line 124
    const-string v1, "Failure2SVDisabled"

    move v7, v2

    move-object v2, v1

    move v1, v0

    move v0, v7

    .line 125
    goto/16 :goto_1

    .line 128
    :sswitch_2
    const/16 v0, -0x3ed

    .line 129
    const-string v1, "Failure2SVFloodCheck"

    move v7, v2

    move-object v2, v1

    move v1, v0

    move v0, v7

    .line 130
    goto/16 :goto_1

    :cond_2
    move v1, v3

    move v7, v2

    move-object v2, v0

    move v0, v7

    goto/16 :goto_1

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x1ad -> :sswitch_2
    .end sparse-switch

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
