.class public Lcom/roblox/client/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/j/b$a;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:Lcom/roblox/client/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/j/b;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/m;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/roblox/client/j/b;->a:Lcom/roblox/client/m;

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/j/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/roblox/client/j/b;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/roblox/client/j/b;->b:Z

    return p0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/roblox/client/j/b;->b:Z

    .line 117
    invoke-static {p1}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/j/b$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/j/b$4;-><init>(Lcom/roblox/client/j/b;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;Lcom/roblox/client/j/b$a;)V

    .line 131
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/j/b;->a:Lcom/roblox/client/m;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "logout"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/roblox/client/j/b;->a:Lcom/roblox/client/m;

    invoke-virtual {v0}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e000c

    new-instance v3, Lcom/roblox/client/j/b$3;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/j/b$3;-><init>(Lcom/roblox/client/j/b;Landroid/app/Activity;)V

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00e8

    new-instance v2, Lcom/roblox/client/j/b$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/j/b$2;-><init>(Lcom/roblox/client/j/b;)V

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/j/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/j/b$1;-><init>(Lcom/roblox/client/j/b;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
