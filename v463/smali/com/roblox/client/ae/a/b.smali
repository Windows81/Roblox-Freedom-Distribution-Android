.class public Lcom/roblox/client/ae/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static varargs a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 128
    :try_start_0
    invoke-virtual {v3}, Lcom/roblox/client/ae/a/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v3}, Lcom/roblox/client/ae/a/a;->b()I

    move-result v4

    .line 131
    invoke-virtual {v3}, Lcom/roblox/client/ae/a/a;->c()I

    move-result v5

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v0, p1, v4, v5}, Lcom/roblox/client/ae/a/b;->a(Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x21

    .line 135
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 138
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Substring: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", is not part of string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointer Exception in generateClickableString(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 148
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://game.qq.com/contract.shtml"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "info/terms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    .line 31
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_TermsOfUse:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_PrivacyPolicy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {p0, p1, v2, v0, v1}, Lcom/roblox/client/ae/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v0, p2

    .line 72
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 73
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v5, v1

    move-object/from16 v10, p4

    .line 74
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 75
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int v12, v11, v1

    .line 76
    new-instance v13, Lcom/roblox/client/ae/a/d;

    invoke-static {}, Lcom/roblox/client/ae/a/b;->a()Ljava/lang/String;

    move-result-object v2

    move-object v1, v13

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 78
    new-instance v1, Lcom/roblox/client/ae/a/d;

    invoke-static {}, Lcom/roblox/client/ae/a/b;->b()Ljava/lang/String;

    move-result-object v8

    move-object v7, v1

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/roblox/client/ae/a/d;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    move-object v1, p1

    .line 80
    invoke-static {p1, v0, v2}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    return-void
.end method

.method public static varargs a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V
    .locals 1

    .line 112
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1, p2}, Lcom/roblox/client/ae/a/b;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/ae/a/a;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 166
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/ae/a/a;

    invoke-virtual {v2}, Lcom/roblox/client/ae/a/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/roblox/client/ae/a/a;

    invoke-virtual {v4}, Lcom/roblox/client/ae/a/a;->b()I

    move-result v4

    .line 168
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/roblox/client/ae/a/a;

    invoke-virtual {v5}, Lcom/roblox/client/ae/a/a;->c()I

    move-result v5

    if-lt p2, v4, :cond_0

    if-le p2, v5, :cond_1

    :cond_0
    if-lt p3, v4, :cond_2

    if-gt p3, v5, :cond_2

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Substring: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", overlaps with substring: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 152
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://game.qq.com/privacy_guide.shtml"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Info/Privacy?layout=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    .line 43
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_TermsOfUse:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_PrivacyPolicy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_TOSAndPrivacy:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p0, p1, v2, v0, v1}, Lcom/roblox/client/ae/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    .line 56
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_TermsOfUse:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_PrivacyPolicy:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_TOSAndPrivacySMSFeeMayApply:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {p0, p1, v2, v0, v1}, Lcom/roblox/client/ae/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
