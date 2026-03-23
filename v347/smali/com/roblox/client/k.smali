.class public abstract Lcom/roblox/client/k;
.super Lcom/roblox/client/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/k$a;
    }
.end annotation


# static fields
.field private static m:I


# instance fields
.field private p:Landroid/support/v7/app/b;

.field private q:Landroid/support/v7/app/b;

.field private r:Landroid/support/v7/app/b;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/k;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/roblox/client/l;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/k;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/k;Landroid/support/v7/app/b;)Landroid/support/v7/app/b;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    return-object p1
.end method

.method private a(Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/support/v7/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/support/v7/app/b;->dismiss()V

    .line 293
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/roblox/client/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/roblox/client/locale/c/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/c/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/locale/c/a;->a(Landroid/content/Context;Z)V

    .line 150
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "rbx.locale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAppResumedFromColdStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/k;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AndroidAppSettings.isInMultipleLocaleFetchApiRollOut()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "rbx.locale"

    const-string v1, "using new api on app resume"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/roblox/client/locale/f;

    invoke-direct {v0}, Lcom/roblox/client/locale/f;-><init>()V

    new-instance v1, Lcom/roblox/client/k$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/k$1;-><init>(Lcom/roblox/client/k;)V

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/locale/f;->a(Landroid/content/Context;Lcom/roblox/client/locale/f$b;)V

    .line 170
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/roblox/client/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {p0, v0}, Lcom/roblox/client/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    .line 269
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    new-instance v1, Lcom/roblox/client/k$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/k$2;-><init>(Lcom/roblox/client/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    goto :goto_0

    .line 278
    :cond_1
    const-string v0, "RobloxActivity"

    const-string v1, "A network-disconnected alert already exists. Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/k;->a(Landroid/support/v7/app/b;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    .line 285
    return-void
.end method


# virtual methods
.method protected a(ZLcom/roblox/client/k$a;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0011

    const v5, 0x7f0e0010

    const/4 v4, 0x0

    .line 306
    iget-object v0, p0, Lcom/roblox/client/k;->p:Landroid/support/v7/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/k;->a(Landroid/support/v7/app/b;)V

    .line 307
    iget-object v0, p0, Lcom/roblox/client/k;->r:Landroid/support/v7/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/k;->a(Landroid/support/v7/app/b;)V

    .line 310
    invoke-virtual {p0}, Lcom/roblox/client/k;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/roblox/client/k;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    const v2, 0x7f0e0012

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/roblox/client/k;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    if-eqz p1, :cond_1

    .line 317
    iget-object v2, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-direct {p0, v2}, Lcom/roblox/client/k;->a(Landroid/support/v7/app/b;)V

    .line 319
    new-instance v2, Landroid/support/v7/app/b$a;

    invoke-direct {v2, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v2, v6}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v0}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/k$3;

    invoke-direct {v2, p0, p0, v1, p2}, Lcom/roblox/client/k$3;-><init>(Lcom/roblox/client/k;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/k$a;)V

    .line 322
    invoke-virtual {v0, v5, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k;->r:Landroid/support/v7/app/b;

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/k;->r:Landroid/support/v7/app/b;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/b;->setCancelable(Z)V

    .line 352
    iget-object v0, p0, Lcom/roblox/client/k;->r:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 353
    return-void

    .line 312
    :cond_0
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/roblox/client/k;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    new-instance v2, Landroid/support/v7/app/b$a;

    invoke-direct {v2, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 332
    invoke-virtual {v2, v6}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v0}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/k$5;

    invoke-direct {v2, p0, p0, v1, p2}, Lcom/roblox/client/k$5;-><init>(Lcom/roblox/client/k;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/k$a;)V

    .line 334
    invoke-virtual {v0, v5, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e000f

    new-instance v2, Lcom/roblox/client/k$4;

    invoke-direct {v2, p0, p2}, Lcom/roblox/client/k$4;-><init>(Lcom/roblox/client/k;Lcom/roblox/client/k$a;)V

    .line 342
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k;->r:Landroid/support/v7/app/b;

    goto :goto_1
.end method

.method protected b(Z)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/k;->a(ZLcom/roblox/client/k$a;)V

    .line 301
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 3

    .prologue
    .line 189
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->getKeyValues(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    const-string v1, "ROBLOXCrash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 222
    const-string v0, "RobloxActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/roblox/client/k;->o:Lcom/roblox/client/purchase/google/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/k;->o:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    :cond_0
    const/16 v0, 0x2777

    if-ne p1, v0, :cond_2

    .line 232
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 233
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "RobloxActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sharing with="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0, p3}, Lcom/roblox/client/k;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-static {v0}, Lcom/roblox/client/i;->c(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppMain-GameShare-AppSelected"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "RobloxActivity"

    const-string v1, "Sharing dialog dismissed."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppMain-GameShare-ChooserDismissed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/l;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 250
    :cond_3
    const-string v0, "RobloxActivity"

    const-string v1, "onActivityResult handled by Store Manager"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/i/c$b;->b:Lcom/roblox/client/i/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V

    .line 56
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->a(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/roblox/client/RobloxApplication;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "Application.AppContext is null in Shell"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Z)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxApplication;->a()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "Application.Locale is null in Shell"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 76
    invoke-static {p0}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 78
    :cond_2
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;)V

    .line 80
    invoke-super {p0, p1}, Lcom/roblox/client/l;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/roblox/client/k;->s()V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {p0}, Lcom/roblox/client/i/a;->a(Landroid/content/Context;)Lcom/roblox/client/i/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/roblox/client/i/a;->a(Ljava/lang/String;)V

    .line 90
    if-nez v0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/roblox/client/k;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    invoke-static {}, Lcom/roblox/client/b;->aw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    const-string v0, "RobloxActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: no AppSettings in activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Finish self!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/k;->finish()V

    .line 96
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/k;->s:Z

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/roblox/client/l;->onDestroy()V

    .line 111
    invoke-direct {p0}, Lcom/roblox/client/k;->n()V

    .line 112
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/k;->a(Landroid/support/v7/app/b;)V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/roblox/client/l;->onPause()V

    .line 197
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/roblox/client/l;->onResume()V

    .line 206
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/roblox/client/b;->a(Landroid/content/Context;)V

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0}, Lcom/roblox/client/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-super {p0}, Lcom/roblox/client/l;->onStart()V

    .line 122
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "RobloxActivity"

    const-string v1, "Alert: needs restart"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/roblox/client/k;->q()V

    .line 127
    :cond_0
    sget v0, Lcom/roblox/client/k;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/roblox/client/k;->m:I

    if-nez v0, :cond_1

    .line 128
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/roblox/client/i/c;->a(Z)V

    .line 130
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->getKeyValues(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ROBLOXCrash"

    .line 131
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    iget-boolean v0, p0, Lcom/roblox/client/k;->s:Z

    if-nez v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/roblox/client/k;->l()V

    .line 134
    invoke-direct {p0}, Lcom/roblox/client/k;->k()V

    .line 138
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/roblox/client/k;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p0}, Lcom/roblox/client/i/a;->a(Landroid/content/Context;)Lcom/roblox/client/i/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/i/a;->b(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/k;->s:Z

    .line 144
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/roblox/client/k;->m:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/roblox/client/k;->m:I

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/c;->a(Z)V

    .line 178
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->getKeyValues(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ROBLOXCrash"

    .line 179
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    const-string v0, "RobloxActivity"

    const-string v1, "The Shell is in background."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/b;->b()V

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/l;->onStop()V

    .line 186
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 259
    :goto_0
    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/roblox/client/k;->m()V

    .line 262
    :cond_0
    return v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/roblox/client/k;->n()V

    .line 363
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e012b

    .line 365
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e0126

    .line 366
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 373
    :cond_1
    return-void
.end method

.method protected r()V
    .locals 3

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/roblox/client/k;->n()V

    .line 382
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e012b

    .line 384
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e0001

    .line 385
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    new-instance v2, Lcom/roblox/client/k$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/k$6;-><init>(Lcom/roblox/client/k;)V

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/roblox/client/k;->q:Landroid/support/v7/app/b;

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 401
    :cond_1
    return-void
.end method
