.class public Lcom/roblox/client/chat/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/l$b;,
        Lcom/roblox/client/chat/l$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/roblox/client/chat/l$1;

    invoke-direct {v0}, Lcom/roblox/client/chat/l$1;-><init>()V

    sput-object v0, Lcom/roblox/client/chat/l;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;JJLandroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 21
    if-nez p5, :cond_0

    .line 22
    new-instance p5, Lcom/roblox/client/chat/l$a;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/roblox/client/chat/l$a;-><init>(JJ)V

    .line 24
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    .line 25
    const v1, 0x7f0e015e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    .line 26
    const v1, 0x7f0e0135

    invoke-virtual {v0, v1, p5}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 31
    :goto_0
    const v1, 0x7f0e0134

    sget-object v2, Lcom/roblox/client/chat/l;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 32
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 33
    return-void

    .line 28
    :cond_1
    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    .line 29
    const v1, 0x7f0e0136

    invoke-virtual {v0, v1, p5}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;JLandroid/content/DialogInterface$OnClickListener;J)V
    .locals 7

    .prologue
    .line 36
    new-instance v6, Landroid/support/v7/app/b$a;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 37
    if-nez p3, :cond_0

    .line 38
    new-instance v0, Lcom/roblox/client/chat/l$b;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/chat/l$b;-><init>(Landroid/support/v4/app/Fragment;JJ)V

    .line 40
    :goto_0
    const v1, 0x7f0e0162

    invoke-virtual {v6, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    .line 41
    const v1, 0x7f0e0137

    invoke-virtual {v6, v1, v0}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 42
    const v0, 0x7f0e0134

    sget-object v1, Lcom/roblox/client/chat/l;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 43
    invoke-virtual {v6}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 44
    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method
