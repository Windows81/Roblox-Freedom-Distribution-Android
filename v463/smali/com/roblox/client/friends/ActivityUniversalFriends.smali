.class public Lcom/roblox/client/friends/ActivityUniversalFriends;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/contacts/h$a;
.implements Lcom/roblox/client/friends/a/a$a;
.implements Lcom/roblox/client/friends/b$a;
.implements Lcom/roblox/client/friends/d$b;
.implements Lcom/roblox/client/friends/nearby/a/a$a;
.implements Lcom/roblox/client/friends/nearby/a/b$a;


# static fields
.field public static q:I

.field public static r:I


# instance fields
.field private s:Lcom/google/android/material/tabs/TabLayout;

.field private t:Landroid/content/ServiceConnection;

.field private u:I

.field private v:I

.field private w:Lcom/roblox/client/friends/c;

.field private x:Lcom/roblox/client/friends/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method private A()V
    .locals 4

    .line 644
    iget v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->u:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "EmptyContacts"

    goto :goto_0

    :cond_1
    const-string v0, "BackNoSettingsAccess"

    goto :goto_0

    :cond_2
    const-string v0, "Error"

    goto :goto_0

    :cond_3
    const-string v0, "BackWithContacts"

    goto :goto_0

    :cond_4
    const-string v0, "BackWhileLoading"

    .line 662
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaving with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityUniversalFriends"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    new-instance v2, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v3, "action"

    invoke-direct {v2, v3, v0}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "contactFriendFinderUserLeavingEvent"

    .line 667
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/ActivityUniversalFriends;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    return p1
.end method

.method private a(IIII)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->a()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p3}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p3

    .line 398
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/tabs/TabLayout$f;->a(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p3

    .line 400
    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/view/View;

    move-result-object p4

    sget v0, Lcom/roblox/client/o$f;->tab_item_image:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 401
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/view/View;

    move-result-object p2

    sget p4, Lcom/roblox/client/o$f;->tab_item_text:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    .line 404
    invoke-virtual {p2, p1}, Lcom/roblox/client/components/RbxTextView;->setText(I)V

    return-object p3
.end method

.method static synthetic a(Lcom/roblox/client/friends/ActivityUniversalFriends;)Lcom/roblox/client/friends/c;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    return-object p0
.end method

.method private a(IZ)V
    .locals 4

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "granted"

    invoke-direct {v1, v3, v2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "contactsAccessRequested"

    .line 634
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const-string p1, "microphoneGranted"

    goto :goto_0

    :cond_1
    const-string p1, "microphoneDenied"

    :goto_0
    const-string p2, "universalFriends"

    .line 636
    invoke-static {p2, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 409
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ActivityUniversalFriends"

    const-string v0, "Tab customView is null on tabSelected."

    .line 411
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_0
    sget v0, Lcom/roblox/client/o$f;->tab_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 416
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 417
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 420
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/ActivityUniversalFriends;Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactFriendFinderTermsRequested"

    .line 626
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 424
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ActivityUniversalFriends"

    const-string v0, "Tab customView is null on tabSelected."

    .line 426
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 429
    :cond_0
    sget v0, Lcom/roblox/client/o$f;->tab_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 431
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 432
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 433
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/friends/ActivityUniversalFriends;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->w()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/friends/ActivityUniversalFriends;Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 441
    invoke-static {p0, v0, p2}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->s()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    if-ne p2, p1, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/friends/ActivityUniversalFriends;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->q()V

    return-void
.end method

.method private q()V
    .locals 3

    const-string v0, "android.permission.READ_CONTACTS"

    .line 459
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "ActivityUniversalFriends"

    if-nez v1, :cond_0

    const-string v0, "Contact permissions have already been granted. Displaying contact details."

    .line 461
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->a()V

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Contact permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    .line 467
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    const/4 v1, 0x1

    sget v2, Lcom/roblox/client/o$j;->Features_FriendFinder_Action_NeedContactsAccess:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c;->a(II)V

    goto :goto_0

    :cond_1
    const-string v0, "Contact permissions have NOT been granted."

    .line 473
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->b()V

    :goto_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 483
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactsPermissionAlreadyAsked"

    const/4 v2, 0x1

    .line 484
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private t()Z
    .locals 3

    .line 493
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ContactsPermissionAlreadyAsked"

    const/4 v2, 0x0

    .line 494
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private u()V
    .locals 4

    const-string v0, "android.permission.READ_CONTACTS"

    .line 505
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x64

    const-string v3, "ActivityUniversalFriends"

    if-eqz v1, :cond_0

    const-string v1, "Should show extra rationale."

    .line 507
    invoke-static {v3, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    .line 523
    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    const/4 v1, 0x1

    sget v2, Lcom/roblox/client/o$j;->Features_FriendFinder_Action_NeedContactsAccess:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c;->a(II)V

    goto :goto_0

    :cond_1
    const-string v1, "Requesting the permission for the first time."

    .line 529
    invoke-static {v3, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private v()V
    .locals 4

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 544
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x65

    const-string v3, "ActivityUniversalFriends"

    if-eqz v1, :cond_0

    const-string v1, "Should show extra rationale."

    .line 546
    invoke-static {v3, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Already asked for the permission but no rationale needed. This means the user checked: \'Do not show again\'"

    .line 562
    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    const/4 v1, 0x0

    sget v2, Lcom/roblox/client/o$j;->Features_Nearby_Action_NeedRecordAudioAccess:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c;->a(II)V

    goto :goto_0

    :cond_1
    const-string v1, "Requesting the permission for the first time."

    .line 568
    invoke-static {v3, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0, v0, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->b(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 3

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 581
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "ActivityUniversalFriends"

    if-nez v1, :cond_0

    const-string v0, "Record audio permission have already been granted. Displaying nearby."

    .line 583
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->d()V

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-static {p0, v0}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Record audio permissions have already been denied once and the userselected \'Don\'t ask me again\'."

    .line 589
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    const/4 v1, 0x0

    sget v2, Lcom/roblox/client/o$j;->Features_Nearby_Action_NeedRecordAudioAccess:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c;->a(II)V

    goto :goto_0

    :cond_1
    const-string v0, "Record audio permissions have NOT been granted."

    .line 595
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->e()V

    :goto_0
    return-void
.end method

.method private x()Z
    .locals 3

    .line 607
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RecordAudioPermissionAlreadyAsked"

    const/4 v2, 0x0

    .line 608
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private y()V
    .locals 3

    .line 612
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RecordAudioPermissionAlreadyAsked"

    const/4 v2, 0x1

    .line 613
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private z()V
    .locals 2

    const-string v0, "contactFriendFinderGoToSettingsClicked"

    const/4 v1, 0x0

    .line 619
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/roblox/client/friends/c;->a(Landroid/app/Activity;J)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->u:I

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->f()V

    return-void
.end method

.method public f(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->z()V

    .line 685
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 686
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 688
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public n()V
    .locals 1

    const-string v0, "Continue"

    .line 696
    invoke-direct {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->u()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    const/16 p1, 0x64

    .line 262
    invoke-virtual {p0, p1, p3}, Lcom/roblox/client/friends/ActivityUniversalFriends;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->finish()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x67

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    const/16 p1, 0x65

    .line 265
    invoke-virtual {p0, p1, p3}, Lcom/roblox/client/friends/ActivityUniversalFriends;->setResult(ILandroid/content/Intent;)V

    .line 266
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 108
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/roblox/client/o$g;->activity_universal_friends:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->setContentView(I)V

    const/4 v0, 0x4

    .line 112
    iput v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->u:I

    .line 115
    sget v0, Lcom/roblox/client/o$f;->universal_friends_toolbar_include:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a()Landroidx/appcompat/app/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 121
    sget v4, Lcom/roblox/client/o$j;->Features_UniversalFriender_Label_AddFriends:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/a;->a(I)V

    .line 122
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/a;->b(Z)V

    .line 123
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/a;->a(Z)V

    .line 124
    invoke-static {v0, p0}, Lcom/roblox/client/components/k;->a(Landroidx/appcompat/widget/Toolbar;Landroid/content/Context;)V

    .line 128
    :cond_0
    new-instance v0, Lcom/roblox/client/friends/UniversalFriendsPresenter;

    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->g()Landroidx/lifecycle/g;

    move-result-object v3

    .line 131
    invoke-static {p0}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v4

    .line 132
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v5

    invoke-direct {v0, v3, p0, v4, v5}, Lcom/roblox/client/friends/UniversalFriendsPresenter;-><init>(Landroidx/lifecycle/g;Lcom/roblox/client/friends/d$b;Lcom/roblox/client/ae/s;Lcom/roblox/client/ad/c;)V

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->x:Lcom/roblox/client/friends/d$a;

    .line 134
    new-instance v0, Lcom/roblox/client/friends/c;

    sget v3, Lcom/roblox/client/o$f;->container:I

    invoke-direct {v0, p0, v3}, Lcom/roblox/client/friends/c;-><init>(Landroidx/appcompat/app/c;I)V

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    .line 136
    sget v0, Lcom/roblox/client/o$f;->universal_friends_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    .line 139
    sget v0, Lcom/roblox/client/o$j;->Features_UniversalFriender_Label_Requests:I

    sget v3, Lcom/roblox/client/o$e;->pending_requests_tab_main_icon:I

    sget v4, Lcom/roblox/client/o$g;->universal_friends_tab_item_layout:I

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 144
    iget-object v3, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 146
    invoke-static {}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sput v1, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    .line 148
    sget v0, Lcom/roblox/client/o$j;->Features_UniversalFriender_Label_Nearby:I

    sget v3, Lcom/roblox/client/o$e;->nearby_tab_main_icon:I

    sget v4, Lcom/roblox/client/o$g;->universal_friends_tab_item_layout:I

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 153
    iget-object v3, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    sget v4, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    invoke-virtual {v3, v0, v4}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 156
    :cond_1
    invoke-static {}, Lcom/roblox/client/friends/UniversalFriendsPresenter;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget v0, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    add-int/2addr v0, v1

    sput v0, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:I

    .line 158
    sget v0, Lcom/roblox/client/o$j;->Features_UniversalFriender_Label_Contacts:I

    sget v1, Lcom/roblox/client/o$e;->contacts_tab_main_icon:I

    sget v3, Lcom/roblox/client/o$g;->universal_friends_tab_item_layout:I

    const/4 v4, 0x2

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IIII)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    sget v3, Lcom/roblox/client/friends/ActivityUniversalFriends;->r:I

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/roblox/client/friends/ActivityUniversalFriends$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/ActivityUniversalFriends$1;-><init>(Lcom/roblox/client/friends/ActivityUniversalFriends;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    if-eqz p1, :cond_3

    const-string v0, "selected_tab_index_bundle_key"

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "TabToShowKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 249
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->x:Lcom/roblox/client/friends/d$a;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/d$a;->a(I)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    .line 252
    :goto_0
    new-instance p1, Lcom/roblox/engine/b/a;

    invoke-direct {p1, v2}, Lcom/roblox/engine/b/a;-><init>(Z)V

    .line 253
    iget-object v0, p1, Lcom/roblox/engine/b/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/roblox/engine/b/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/roblox/engine/b/a;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 273
    sget v1, Lcom/roblox/client/o$h;->universal_friends_list_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 274
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 330
    invoke-super {p0}, Lcom/roblox/client/q;->onDestroy()V

    .line 332
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->A()V

    .line 334
    new-instance v0, Lcom/roblox/engine/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/roblox/engine/b/a;-><init>(Z)V

    .line 335
    iget-object v1, v0, Lcom/roblox/engine/b/a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/engine/b/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/engine/b/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/l/j;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigateToFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityUniversalFriends"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object p1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v0, "NEARBY_TAG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 735
    sget p1, Lcom/roblox/client/friends/ActivityUniversalFriends;->q:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->e(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 281
    sget v1, Lcom/roblox/client/o$f;->menu_search_friends:I

    const/4 v2, 0x1

    const-string v3, "universalFriends"

    if-ne v0, v1, :cond_0

    const-string p1, "searchButton"

    .line 282
    invoke-static {v3, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {p1, p0}, Lcom/roblox/client/friends/c;->a(Landroid/app/Activity;)V

    return v2

    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    const-string p1, "backButton"

    .line 286
    invoke-static {v3, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->finish()V

    return v2

    .line 291
    :cond_1
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "ActivityUniversalFriends"

    const/16 v3, 0x64

    if-ne p1, v3, :cond_1

    const-string p1, "Received response for contact permissions request."

    .line 364
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {p3}, Lcom/roblox/client/ae/m;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Read Contacts permission granted. Fetching contacts."

    .line 367
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v1, v1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "Contacts permissions were NOT granted."

    .line 371
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0, v1, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    const-string p1, "Received response for record_audio permissions request."

    .line 377
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {p3}, Lcom/roblox/client/ae/m;->a([I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Record_audio permission granted."

    .line 380
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    :cond_2
    const-string p1, "Record_audio permissions were NOT granted."

    .line 384
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0, v0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(IZ)V

    goto :goto_0

    .line 389
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/roblox/client/q;->onResume()V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume. Tab selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityUniversalFriends"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->s:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 311
    iget v1, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    if-nez v1, :cond_0

    .line 312
    invoke-direct {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 313
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->g()V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 341
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 344
    iget v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->v:I

    const-string v1, "selected_tab_index_bundle_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 296
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    .line 298
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 300
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->t:Landroid/content/ServiceConnection;

    const-string v0, "universalFriends"

    .line 301
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 322
    invoke-super {p0}, Lcom/roblox/client/q;->onStop()V

    .line 324
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->t:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public p()V
    .locals 0

    .line 720
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->v()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 705
    invoke-direct {p0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->A()V

    .line 707
    iget-object v0, p0, Lcom/roblox/client/friends/ActivityUniversalFriends;->w:Lcom/roblox/client/friends/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c;->c()V

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/ActivityUniversalFriends;->e(I)V

    return-void
.end method
