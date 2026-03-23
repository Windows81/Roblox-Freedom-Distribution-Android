.class public abstract Lcom/roblox/client/r;
.super Landroidx/appcompat/app/c;
.source "SourceFile"


# static fields
.field protected static n:I

.field protected static o:I


# instance fields
.field private k:Z

.field protected p:Lcom/roblox/client/p/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fmod"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "roblox"

    .line 48
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    .line 38
    new-instance v0, Lcom/roblox/client/p/a;

    invoke-direct {v0}, Lcom/roblox/client/p/a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/r;->p:Lcom/roblox/client/p/a;

    return-void
.end method

.method public static J()Z
    .locals 1

    .line 179
    sget v0, Lcom/roblox/client/r;->o:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/roblox/client/r;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 232
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 233
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    if-eqz p2, :cond_1

    .line 235
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/b$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/b$a;

    .line 237
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method


# virtual methods
.method protected I()V
    .locals 1

    .line 169
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/r;->setRequestedOrientation(I)V

    return-void
.end method

.method public K()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/roblox/client/r;->k:Z

    return v0
.end method

.method public L()Lcom/roblox/client/p/a;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/roblox/client/r;->p:Lcom/roblox/client/p/a;

    return-object v0
.end method

.method public a(II)V
    .locals 0

    .line 241
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/roblox/client/r;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/r;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 217
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad format: format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". args="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RobloxBaseActivity"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget p1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_SystemErrorTryLater:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/r;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/r;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 245
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/r;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 5

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/roblox/client/locale/b;->a(Landroid/content/Context;)Lcom/roblox/client/locale/f;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> Locale: base = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; default = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rbx.locale"

    .line 56
    invoke-static {v4, v3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v2}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/roblox/client/locale/b;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 194
    invoke-virtual {p0, p1}, Lcom/roblox/client/r;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/r;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/r;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/r;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public isDestroyed()Z
    .locals 2

    .line 255
    sget-object v0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/g$b;

    invoke-virtual {p0}, Lcom/roblox/client/r;->g()Landroidx/lifecycle/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/g$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-static {p0}, Lcom/roblox/client/u;->b(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/roblox/client/r;->n:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/roblox/client/r;->n:I

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/roblox/client/q/a;

    invoke-direct {p1}, Lcom/roblox/client/q/a;-><init>()V

    invoke-static {p1}, Lcom/roblox/engine/jni/locale/NativeLocaleJavaInterface;->setImplementation(Lcom/roblox/engine/jni/locale/a;)V

    .line 78
    new-instance p1, Lcom/roblox/client/q/b;

    invoke-direct {p1, p0}, Lcom/roblox/client/q/b;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/roblox/engine/jni/reporter/SessionReporterJavaInterface;->setImplementation(Lcom/roblox/engine/jni/reporter/a;)V

    .line 79
    invoke-static {}, Lcom/roblox/client/w/a;->a()V

    const-wide/16 v0, 0x0

    const-string p1, "SessionReporterState_ApplicationStart"

    .line 81
    invoke-static {p1, v0, v1}, Lcom/roblox/client/w/a;->a(Ljava/lang/String;J)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/ad/c;->o()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 92
    sget v0, Lcom/roblox/client/r;->n:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/roblox/client/r;->n:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "SessionReporterState_ApplicationTerminate"

    .line 93
    invoke-static {v2, v0, v1}, Lcom/roblox/client/w/a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/roblox/client/r;->setIntent(Landroid/content/Intent;)V

    .line 141
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/roblox/client/r;->k:Z

    .line 120
    sget-object v0, Lcom/roblox/client/u;->b:Landroid/content/SharedPreferences;

    const-string v1, "webview_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/roblox/client/r;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/http/b;->a(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/roblox/client/r;->setIntent(Landroid/content/Intent;)V

    .line 129
    invoke-super {p0}, Landroidx/appcompat/app/c;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/appcompat/app/c;->onResume()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/roblox/client/r;->k:Z

    .line 151
    invoke-static {}, Lcom/roblox/client/http/b;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 102
    sget v0, Lcom/roblox/client/r;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/roblox/client/r;->o:I

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/roblox/client/http/b;->b()V

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 112
    sget v0, Lcom/roblox/client/r;->o:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/roblox/client/r;->o:I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxBaseActivity"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onTrimMemory(I)V

    .line 160
    invoke-static {v1, p1}, Lcom/roblox/client/RobloxApplication;->a(Ljava/lang/String;I)V

    return-void
.end method
