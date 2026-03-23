.class public Lcom/roblox/client/purchase/google/a;
.super Lcom/roblox/client/purchase/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/google/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/roblox/client/purchase/google/a$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/purchase/google/a$a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/roblox/client/purchase/d;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a;->a:Lcom/roblox/client/purchase/google/a$a;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const v5, 0x7f0e01b7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const v0, 0x7f0e012c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/roblox/client/purchase/google/a$1;->a:[I

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a;->a:Lcom/roblox/client/purchase/google/a$a;

    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 87
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    const v0, 0x7f0e01b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    const v1, 0x7f0e01b6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_2
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_3
    const v0, 0x7f0e01b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_4
    const v1, 0x7f0e01bb

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_5
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_6
    const v1, 0x7f0e01b4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    sget-object v2, Lcom/roblox/client/purchase/google/a$1;->a:[I

    iget-object v3, p0, Lcom/roblox/client/purchase/google/a;->a:Lcom/roblox/client/purchase/google/a$a;

    invoke-virtual {v3}, Lcom/roblox/client/purchase/google/a$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 115
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 98
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a;->a:Lcom/roblox/client/purchase/google/a$a;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->a:Lcom/roblox/client/purchase/google/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
